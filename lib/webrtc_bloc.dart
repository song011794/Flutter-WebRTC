import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter_dotenv/flutter_dotenv.dart';

enum WebRTCState { initial, connecting, connected, error }

class WebRTCBloc extends Cubit<WebRTCState> {
  WebRTCBloc() : super(WebRTCState.initial);

  late final IO.Socket socket;

  // late RTCPeerConnection _peerConnection;

  final localRenderer = RTCVideoRenderer();
  final remoteRenderer = RTCVideoRenderer();
  MediaStream? _localStream;
  RTCPeerConnection? pc;

  void initialize() async {
    localRenderer.initialize();
    remoteRenderer.initialize();
    await connectSocket();
    await joinRoom();
    // // Get access to the user's camera and microphone
    // localStream = await navigator.mediaDevices.getUserMedia({
    //   'audio': true,
    //   'video': true,
    // });

    // // Set the initial state to "connecting"
    // emit(WebRTCState.connecting);

    // // Create a new peer connection
    // _peerConnection = await createPeerConnection({
    //   'iceServers': [
    //     {'url': 'stun:stun.l.google.com:19302'}
    //   ]
    // }, {});

    // // Set up the peer connection event handlers
    // _peerConnection.onIceCandidate = (RTCIceCandidate candidate) {
    //   // Send the candidate to the other peer
    // };

    // _peerConnection.onAddStream = (MediaStream stream) {
    //   remoteStream = stream;
    //   // Set the state to "connected"
    //   emit(WebRTCState.connected);
    // };

    // // Add the local stream to the peer connection
    // _peerConnection.addStream(localStream);
  }

  Future connectSocket() async {
    socket = IO.io(dotenv.get('SOCKET_HOST'),
        IO.OptionBuilder().setTransports(['websocket']).build());

    socket.onConnect((_) {
      print('연결 완료!');
    });

    socket.on('joined', (data) {
      _sendOffer();
    });

    socket.on('offer', (data) async {
      data = jsonDecode(data);
      await _gotOffer(RTCSessionDescription(data['sdp'], data['type']));
      await _sendAnswer();
    });

    socket.on('answer', (data) {
      data = jsonDecode(data);
      _gotAnswer(RTCSessionDescription(data['sdp'], data['type']));
    });

    socket.on('ice', (data) {
      data = jsonDecode(data);
      _gotIce(RTCIceCandidate(
          data['candidate'], data['sdpMid'], data['sdpMLineIndex']));
    });
  }

  Future joinRoom() async {
    final config = {
      'iceServers': [
        {"url": "stun:stun.google.com:19302"},
      ]
    };

    final sdpConstraints = {
      "mandatory": {
        'offerToReceiveAudio': true,
        'offerToReceiveVideo': true,
      },
      "optional": []
    };

    pc = await createPeerConnection(config, sdpConstraints);

    final mediaConstraints = {
      'audio': true,
      'video': {'facingMode': 'user'}
    };

    emit(WebRTCState.connecting);

    _localStream = await Helper.openCamera(mediaConstraints);

    _localStream!.getTracks().forEach((track) {
      print('localStream');
      pc!.addTrack(track, _localStream!);
    });

    localRenderer.srcObject = _localStream;
    emit(WebRTCState.connected);

    pc!.onIceCandidate = (ice) {
      _sendIce(ice);
    };

    pc!.onAddStream = (stream) {
      print('remoteRenderer');
      remoteRenderer.srcObject = stream;
      emit(WebRTCState.connected);
    };

    pc!.onRemoveStream = (stream) {
      print('RemoveStream');
    };

    socket.emit('join');
  }

  Future _sendOffer() async {
    print('send offer');
    var offer = await pc!.createOffer();
    pc!.setLocalDescription(offer);
    socket.emit('offer', jsonEncode(offer.toMap()));
  }

  Future _gotOffer(RTCSessionDescription offer) async {
    print('got offer');
    pc!.setRemoteDescription(offer);
  }

  Future _sendAnswer() async {
    print('send answer');
    var answer = await pc!.createAnswer();
    pc!.setLocalDescription(answer);
    socket.emit('answer', jsonEncode(answer.toMap()));
  }

  Future _gotAnswer(RTCSessionDescription answer) async {
    print('got answer');
    pc!.setRemoteDescription(answer);
  }

  Future _sendIce(RTCIceCandidate ice) async {
    socket.emit('ice', jsonEncode(ice.toMap()));
  }

  Future _gotIce(RTCIceCandidate ice) async {
    pc!.addCandidate(ice);
  }

  // void connect() async {
  //   // Create an offer to start the connection
  //   await _peerConnection.createOffer({
  //     'offerToReceiveAudio': true,
  //     'offerToReceiveVideo': true,
  //   }).then((offer) {
  //     _peerConnection.setLocalDescription(offer);
  //     // Send the offer to the other peer
  //   });
  // }

  // void handleAnswer(dynamic data) async {
  //   // Handle the answer from the other peer
  //   await _peerConnection.setRemoteDescription(RTCSessionDescription(
  //     data['sdp'],
  //     data['type'],
  //   ));
  // }

  // void handleCandidate(dynamic data) async {
  //   // Handle the ICE candidate from the other peer
  //   await _peerConnection.addCandidate(RTCIceCandidate(
  //     data['candidate'],
  //     data['sdpMid'],
  //     data['sdpMLineIndex'],
  //   ));
  // }

  void dispose() {
    // Clean up the resources used by the peer connection
    // localStream?.dispose();
    localRenderer.dispose();
    remoteRenderer.dispose();
    // _peerConnection.close();
    _localStream?.dispose();
    pc?.close();
  }
}
