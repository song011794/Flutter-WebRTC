import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

import 'package:webrtc/bloc/socket_bloc.dart';

import 'package:webrtc/bloc/web_rtc_bloc.dart';

class WebRTCPage2 extends StatefulWidget {
  final String roomId;
  final String nickName;

  const WebRTCPage2({required this.roomId, required this.nickName});

  @override
  _WebRTCPageState createState() => _WebRTCPageState();
}

class _WebRTCPageState extends State<WebRTCPage2> {
  final GlobalKey _renderkey = GlobalKey();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  double _x = -1;
  double _y = -1;
  double localRenderSizeWidth = 150;
  double localRenderSizeHeight = 300;

  late final SocketBloc _socketBloc;
  late final WebRTCBloc _webRTCBloc;
  @override
  void initState() {
    super.initState();
    _socketBloc = context.read<SocketBloc>();
    _webRTCBloc = context.read<WebRTCBloc>();
    _webRTCBloc.add(WebRtcEvent.initalize(widget.roomId));
    _socketBloc.add(SocketEvent.onSendJoin('join', {'room': widget.roomId}));
  }

  @override
  void dispose() {
    super.dispose();
    context.read<WebRTCBloc>().dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget onlyLocalRender() {
      return BlocBuilder<WebRTCBloc, WebRtcState>(
          bloc: _webRTCBloc,
          builder: (context, state) {
            return state.when(
                initial: () => Text('준비 중'),
                ready: () => RTCVideoView(_webRTCBloc.localRenderer,
                    objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                    filterQuality: FilterQuality.medium));
          });
    }

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            key: _renderkey,
            child: BlocConsumer<SocketBloc, SocketState>(
              bloc: _socketBloc,
              listener: (context, state) {
                state.when(
                    initial: () => debugPrint('init'),
                    connected: () {
                      debugPrint('connected');
                      _socketBloc.add(SocketEvent.onSendJoin(
                          'join', {'room': widget.roomId}));
                    },
                    disconnected: () => debugPrint('disconnected'),
                    receiveJoined: () {
                      debugPrint('receiveJoined');
                      _webRTCBloc.sendOffer(widget.roomId);
                    },
                    receiveOffer: (data) async {
                      debugPrint('receiveOffer');
                      final offerData = jsonDecode(data);
                      await _webRTCBloc
                          .gotOffer(RTCSessionDescription(
                              offerData['sdp'], offerData['type']))
                          .whenComplete(() async =>
                              await _webRTCBloc.sendAnswer(widget.roomId));
                    },
                    receiveAnswer: (data) async {
                      debugPrint('receiveAnswer');
                      final answerData = jsonDecode(data);
                      await _webRTCBloc.gotAnswer(RTCSessionDescription(
                          answerData['sdp'], answerData['type']));
                    },
                    receiveIce: (data) async {
                      debugPrint('receiveIce');
                      final iceData = jsonDecode(data);
                      await _webRTCBloc.gotIce(RTCIceCandidate(
                          iceData['candidate'],
                          iceData['sdpMid'],
                          iceData['sdpMLineIndex']));
                    },
                    error: () => debugPrint('error'),
                    timeout: () => debugPrint('timeout'));
              },
              builder: (context, state) {
                return state.when(
                    initial: onlyLocalRender,
                    connected: onlyLocalRender,
                    disconnected: onlyLocalRender,
                    receiveJoined: onlyLocalRender,
                    receiveOffer: (data) => onlyLocalRender(),
                    receiveAnswer: (data) => Text(''),
                    receiveIce: (data) => Text(''),
                    error: onlyLocalRender,
                    timeout: onlyLocalRender);             
              },
            ),
          ),
        ],
      ),
    );
  }
}
