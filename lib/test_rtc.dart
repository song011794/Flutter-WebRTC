import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class TestRtc extends StatefulWidget {
  const TestRtc({Key? key}) : super(key: key);

  @override
  _RtcState createState() => _RtcState();
}

class _RtcState extends State<TestRtc> {
  late final IO.Socket socket;
  final List<RTCVideoRenderer> _renderer = [];
  // final _remoteRenderer = RTCVideoRenderer();
  MediaStream? _localStream;
  RTCPeerConnection? pc;

  @override
  void initState() {
    init();
    super.initState();
  }

  Future init() async {
    _renderer.add(RTCVideoRenderer());
    await _renderer.elementAt(0).initialize();

    await connectSocket();
    await joinRoom();
  }

  Future connectSocket() async {
    socket = IO.io(dotenv.get('SOCKET_HOST'),
        IO.OptionBuilder().setTransports(['websocket']).build());

    socket.onConnect((_) {
      print('연결 완료!');
    });
    //
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

    _localStream = await Helper.openCamera(mediaConstraints);

    _localStream!.getTracks().forEach((track) {
      print('localStream');
      pc!.addTrack(track, _localStream!);
    });

    _renderer.elementAt(0).srcObject = _localStream;
    setState(() {});

    pc!.onIceCandidate = (ice) {
      _sendIce(ice);
    };

    pc!.onAddStream = (stream) async {
      print('remoteRenderer');
      _renderer.add(RTCVideoRenderer());
      // await
      await _renderer.last.initialize();
      _renderer.last.srcObject = stream;

      // _remoteRenderer.srcObject = stream;
      setState(() {});
    };

    pc!.onRemoveStream = (stream) {
      print('RemoveStream');
    };

    socket.emit('join');
  }

  Future onAddUser() async {
    _renderer.add(RTCVideoRenderer());
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

  @override
  Widget build(BuildContext context) {
    print('build');
    return MaterialApp(
      home: Row(
        children: [
          for (int i = 0; i < _renderer.length; i++)
            Expanded(
                child: RTCVideoView(
              _renderer[i],
              objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
            )),
          //   Expanded(
          //       child: RTCVideoView(
          //     _localRenderer,
          //     objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
          //   )),
          // Expanded(
          //     child: RTCVideoView(
          //   _remoteRenderer,
          //   objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
          // ))
        ],
      ),
    );
  }
}
