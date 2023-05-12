import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter_dotenv/flutter_dotenv.dart';

enum WebRTCState {
  initial,
  connecting,
  connected,
  remoteConnecting,
  remoteConnected,
  error
}

class WebRTCBloc extends Cubit<WebRTCState> {
  WebRTCBloc() : super(WebRTCState.initial);

  late final IO.Socket socket;

  final localRenderer = RTCVideoRenderer();
  final remoteRenderer = RTCVideoRenderer();
  MediaStream? _localStream;
  RTCPeerConnection? pc;

  void initialize() async {
    localRenderer.initialize();
    remoteRenderer.initialize();
    await connectSocket();
    await joinRoom();
  }

  Future connectSocket() async {
    socket = IO.io(dotenv.get('SOCKET_HOST'),
        IO.OptionBuilder().setTransports(['websocket']).build());

    socket.onConnect((_) {
      debugPrint('연결 완료!');
      // socket.emit(
      //     'message', {'type': 'nickName', 'room': 'dogRoom', 'payload': 'kim'});

      // Future.delayed(Duration(milliseconds: 500), () {
      //   socket.emit('message',
      //       {'type': 'newMessage', 'room': 'dogRoom', 'payload': '오예'});
      // });
    });

    socket.on('message', (data) {
      print(data.toString());
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
      emit(WebRTCState.connecting);
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
      debugPrint('localStream');
      pc!.addTrack(track, _localStream!);
    });

    localRenderer.srcObject = _localStream;
    emit(WebRTCState.connected);

    pc!.onIceCandidate = (ice) {
      _sendIce(ice);
    };

    pc!.onAddStream = (stream) {
      emit(WebRTCState.remoteConnecting);
      debugPrint('remoteRenderer');
      remoteRenderer.srcObject = stream;
      emit(WebRTCState.remoteConnected);
    };

    socket.emit('join', {'room': 'dogRoom'});
  }

  Future _sendOffer() async {
    debugPrint('send offer');
    var offer = await pc!.createOffer();
    pc!.setLocalDescription(offer);
    socket.emit(
        'offer', {'room': 'dogRoom', 'offerData': jsonEncode(offer.toMap())});
  }

  Future _gotOffer(RTCSessionDescription offer) async {
    debugPrint('got offer');
    pc!.setRemoteDescription(offer);
  }

  Future _sendAnswer() async {
    debugPrint('send answer');
    var answer = await pc!.createAnswer();
    pc!.setLocalDescription(answer);
    socket.emit('answer',
        {'room': 'dogRoom', 'answerData': jsonEncode(answer.toMap())});
  }

  Future _gotAnswer(RTCSessionDescription answer) async {
    debugPrint('got answer');
    pc!.setRemoteDescription(answer);
  }

  Future _sendIce(RTCIceCandidate ice) async {
    print('_sendIce');
    socket.emit('ice', {'room': 'dogRoom', 'iceData': jsonEncode(ice.toMap())});
  }

  Future _gotIce(RTCIceCandidate ice) async {
    print('_gotIce');
    pc!.addCandidate(ice);
  }

@override
  Future<void> close() {
      localRenderer.dispose();
    remoteRenderer.dispose();
    _localStream?.dispose();
    pc?.close();
    return super.close();
  }


}
