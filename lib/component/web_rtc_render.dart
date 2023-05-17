import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

import '../bloc/socket/socket_bloc.dart';
import '../bloc/web_rtc/web_rtc_bloc.dart';

class WebRtcRender extends StatefulWidget {
  const WebRtcRender(
      {Key? key,
      required this.roomId,
      required this.nickName,
      required this.renderkey})
      : super(key: key);

  final String roomId;
  final String nickName;
  final GlobalKey renderkey;

  @override
  _WebRtcRenderState createState() => _WebRtcRenderState();
}

class _WebRtcRenderState extends State<WebRtcRender> {
  late final SocketBloc _socketBloc;
  late final WebRTCBloc _webRTCBloc;

  double _x = -1;
  double _y = -1;
  double localRenderSizeWidth = 150;
  double localRenderSizeHeight = 300;

  @override
  void initState() {
    super.initState();
    _socketBloc = context.read<SocketBloc>();
    _webRTCBloc = context.read<WebRTCBloc>();
    _webRTCBloc.add(WebRtcEvent.initalize(widget.roomId));
    _socketBloc.add(SocketEvent.onSendJoin('join', {'room': widget.roomId}));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {});
    });
  }

  // @override
  // void dispose() {
  //   _webRTCBloc.close();
  //   super.dispose();
  // }

  Widget onlyLocalRender() {
    return BlocBuilder<WebRTCBloc, WebRtcState>(
        bloc: _webRTCBloc,
        builder: (context, state) {
          return state.when(
              initial: () => const Center(
                      child: Text(
                    'Waiting for connection...',
                    style: TextStyle(color: Colors.black),
                  )),
              ready: () => RTCVideoView(_webRTCBloc.localRenderer,
                  objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                  filterQuality: FilterQuality.medium));
        });
  }

  Widget localAndRemoteRender(Size size) {
    final RenderBox renderBox =
        widget.renderkey.currentContext!.findRenderObject() as RenderBox;

    return BlocListener<WebRTCBloc, WebRtcState>(
      bloc: _webRTCBloc,
      listener: (context, state) {
        setState(() {});
      },
      child: Stack(
        children: [
          RTCVideoView(_webRTCBloc.remoteRenderer,
              objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
              filterQuality: FilterQuality.medium),
          Positioned(
            left: _x < 0 ? size.width - localRenderSizeWidth : _x,
            top: _y < 0 ? renderBox.size.height - localRenderSizeHeight : _y,
            child: Draggable(
              onDragEnd: (dragDetails) {
                setState(() {
                  size.width;
                  size.height;

                  // 왼쪽으로 넘어갈 경우
                  if (dragDetails.offset.dx < 0) {
                    _x = 0;
                  } else {
                    // 오른쪽으로 넘어갈 경우
                    if (size.width - localRenderSizeWidth <
                        dragDetails.offset.dx) {
                      _x = size.width - localRenderSizeWidth;
                    } else {
                      _x = dragDetails.offset.dx;
                    }
                  }

                  // 위쪽으로 넘어갈 경우
                  if (dragDetails.offset.dy < 0) {
                    _y = 0;
                  } else {
                    // 아래쪽으로 넘어갈 경우
                    if (renderBox.size.height - localRenderSizeHeight <
                        dragDetails.offset.dy) {
                      _y = renderBox.size.height - localRenderSizeHeight;
                    } else {
                      _y = dragDetails.offset.dy;
                    }
                  }
                });
              },
              feedback: SizedBox(
                width: localRenderSizeWidth,
                height: localRenderSizeHeight,
                child: RTCVideoView(_webRTCBloc.localRenderer,
                    objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                    filterQuality: FilterQuality.medium),
              ),
              child: SizedBox(
                width: localRenderSizeWidth,
                height: localRenderSizeHeight,
                child: RTCVideoView(_webRTCBloc.localRenderer,
                    objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                    filterQuality: FilterQuality.medium),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocConsumer<SocketBloc, SocketState>(
      bloc: _socketBloc,
      listener: (context, state) {
        state.when(
            initial: () => debugPrint('init'),
            connected: () {
              debugPrint('connected');
              // _socketBloc
              //     .add(SocketEvent.onSendJoin('join', {'room': widget.roomId}));
            },
            disconnected: () => debugPrint('disconnected'),
            receiveJoined: () {
              debugPrint('receiveJoined');
              // Future.delayed(Duration(seconds: 3),
              //     () => _webRTCBloc.sendOffer(widget.roomId));
              _webRTCBloc.sendOffer(widget.roomId);
            },
            receiveOffer: (data) async {
              debugPrint('receiveOffer');
              final offerData = jsonDecode(data);
              await _webRTCBloc
                  .gotOffer(RTCSessionDescription(
                      offerData['sdp'], offerData['type']))
                  .whenComplete(() async {
                await _webRTCBloc.sendAnswer(widget.roomId);
              });
            },
            receiveAnswer: (data) async {
              debugPrint('receiveAnswer');
              final answerData = jsonDecode(data);
              await _webRTCBloc.gotAnswer(
                  RTCSessionDescription(answerData['sdp'], answerData['type']));
              setState(() {});
            },
            receiveIce: (data) async {
              debugPrint('receiveIce');
              final iceData = jsonDecode(data);
              await _webRTCBloc.gotIce(RTCIceCandidate(iceData['candidate'],
                  iceData['sdpMid'], iceData['sdpMLineIndex']));

              setState(() {});
            },
            error: () => debugPrint('error'),
            timeout: () => debugPrint('timeout'),
            receiveMessage: (data) {
              debugPrint('meassage');
              setState(() {});
            });
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: onlyLocalRender,
          receiveAnswer: (data) => localAndRemoteRender(size),
          receiveIce: (data) => localAndRemoteRender(size),
          receiveMessage: (data) => localAndRemoteRender(size),
        );
      },
    );
  }
}
