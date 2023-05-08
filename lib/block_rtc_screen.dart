import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class BlocRtc extends StatefulWidget {
  const BlocRtc({Key? key}) : super(key: key);

  @override
  _RtcState createState() => _RtcState();
}

class _RtcState extends State<BlocRtc> {
  late final IO.Socket socket;
  final _localRenderer = RTCVideoRenderer();
  final _remoteRenderer = RTCVideoRenderer();
  MediaStream? _localStream;
  RTCPeerConnection? pc;

  @override
  void initState() {
    init();
    super.initState();
  }

  Future init() async {
    // await _localRenderer.initialize();
    // await _remoteRenderer.initialize();

  
    // await joinRoom();
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

    _localRenderer.srcObject = _localStream;
    setState(() {});

    pc!.onIceCandidate = (ice) {
      _sendIce(ice);
    };

    pc!.onAddStream = (stream) {
      print('remoteRenderer');
      _remoteRenderer.srcObject = stream;
      setState(() {});
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

  @override
  Widget build(BuildContext context) {
    print('build');
    return MaterialApp(
      home: 
      Container()
      // Row(
      //   children: [
      //     Expanded(
      //         child: RTCVideoView(
      //       _localRenderer,
      //       objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
      //     )),
      //     Expanded(
      //         child: RTCVideoView(
      //       _remoteRenderer,
      //       objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
      //     ))
      //   ],
      // ),
    );
  }
}
