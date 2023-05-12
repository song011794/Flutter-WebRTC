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
                BlocBuilder<WebRTCBloc, WebRtcState>(
                  bloc: _webRTCBloc,
                  builder: (context, rtcState) {
                    return Container();
                    // rtcState.when(initial: initial, connected: connected, connecting: connecting, Error: Error)
                  },
                );

                return RTCVideoView(_webRTCBloc.localRenderer,
                    objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                    filterQuality: FilterQuality.medium);
              },
            ),
          ),
        ],
      ),
    );

    // return Column(
    //   children: [
    //     Expanded(
    //       key: _renderkey,
    //       child: Stack(
    //         children: [
    //           // BlocConsumer<SocketBloc, SocketState>(
    //           //     bloc: context.read<SocketBloc>(),
    //           //     listener: (context, state) {
    //           //       state.when(initial: () {
    //           //         print('initial');
    //           //       }, connected: (type, data) {
    //           //         print(
    //           //             'connected type : $type, data : ${data.toString()}');

    //           //         switch (type) {
    //           //           case 'JoinedEvent':
    //           //             // on('joined') => sendOffer
    //           //             context
    //           //                 .read<WebRTCBloc>()
    //           //                 .add(WebRtcEvent.sendOffer(widget.roomId));
    //           //             break;

    //           //           case 'GotOfferEvent':
    //           //             // on('offer') => gotOffer, sendAnswer
    //           //             context
    //           //                 .read<WebRTCBloc>()
    //           //                 .add(WebRtcEvent.gotOffer(widget.roomId, data));
    //           //             break;

    //           //           case 'GotAsnwerEvent':
    //           //             // on('answer') => gorAnswer
    //           //             context
    //           //                 .read<WebRTCBloc>()
    //           //                 .add(WebRtcEvent.gotAnswer(data));
    //           //             break;

    //           //           case 'GotIceEvent':
    //           //             // on('ice') => gotIce
    //           //             context
    //           //                 .read<WebRTCBloc>()
    //           //                 .add(WebRtcEvent.gotIce(data));
    //           //             break;
    //           //         }
    //           //       }, disconnected: () {
    //           //         print('disconneced');
    //           //       });
    //           //     },
    //           //     builder: (context, socketState) {
    //           //       return socketState.when(
    //           //         initial: () => const Center(
    //           //             child: Text('Waiting for connection...')),
    //           //         connected: (type, data) =>
    //           //             BlocBuilder<WebRTCBloc, WebRtcState>(
    //           //           bloc: context.read<WebRTCBloc>(),
    //           //           builder: (context, webRtcstate) {
    //           //             return webRtcstate.when(
    //           //               initial: () => const Center(
    //           //                   child: Text('Waiting for connection...')),
    //           //               connected: (type) {
    //           //                 final RenderBox renderBox =
    //           //                     _renderkey.currentContext!.findRenderObject()
    //           //                         as RenderBox;
    //           //                 switch (type) {
    //           //                   case 'local':
    //           //                     return RTCVideoView(
    //           //                         context.read<WebRTCBloc>().localRenderer,
    //           //                         objectFit: RTCVideoViewObjectFit
    //           //                             .RTCVideoViewObjectFitCover,
    //           //                         filterQuality: FilterQuality.medium);

    //           //                   case 'remote':
    //           //                     return Positioned(
    //           //                       left: _x < 0
    //           //                           ? size.width - localRenderSizeWidth
    //           //                           : _x,
    //           //                       top: _y < 0
    //           //                           ? renderBox.size.height -
    //           //                               localRenderSizeHeight
    //           //                           : _y,
    //           //                       child: Draggable(
    //           //                         onDragEnd: (dragDetails) {
    //           //                           setState(() {
    //           //                             size.width;
    //           //                             size.height;

    //           //                             // 왼쪽으로 넘어갈 경우
    //           //                             if (dragDetails.offset.dx < 0) {
    //           //                               _x = 0;
    //           //                             } else {
    //           //                               // 오른쪽으로 넘어갈 경우
    //           //                               if (size.width -
    //           //                                       localRenderSizeWidth <
    //           //                                   dragDetails.offset.dx) {
    //           //                                 _x = size.width -
    //           //                                     localRenderSizeWidth;
    //           //                               } else {
    //           //                                 _x = dragDetails.offset.dx;
    //           //                               }
    //           //                             }

    //           //                             // 위쪽으로 넘어갈 경우
    //           //                             if (dragDetails.offset.dy < 0) {
    //           //                               _y = 0;
    //           //                             } else {
    //           //                               // 아래쪽으로 넘어갈 경우
    //           //                               if (renderBox.size.height -
    //           //                                       localRenderSizeHeight <
    //           //                                   dragDetails.offset.dy) {
    //           //                                 _y = renderBox.size.height -
    //           //                                     localRenderSizeHeight;
    //           //                               } else {
    //           //                                 _y = dragDetails.offset.dy;
    //           //                               }
    //           //                             }
    //           //                           });
    //           //                         },
    //           //                         feedback: SizedBox(
    //           //                           width: localRenderSizeWidth,
    //           //                           height: localRenderSizeHeight,
    //           //                           child: RTCVideoView(
    //           //                               context
    //           //                                   .read<WebRTCBloc>()
    //           //                                   .localRenderer,
    //           //                               objectFit: RTCVideoViewObjectFit
    //           //                                   .RTCVideoViewObjectFitCover,
    //           //                               filterQuality:
    //           //                                   FilterQuality.medium),
    //           //                         ),
    //           //                         child: SizedBox(
    //           //                           width: localRenderSizeWidth,
    //           //                           height: localRenderSizeHeight,
    //           //                           child: RTCVideoView(
    //           //                               context
    //           //                                   .read<WebRTCBloc>()
    //           //                                   .localRenderer,
    //           //                               objectFit: RTCVideoViewObjectFit
    //           //                                   .RTCVideoViewObjectFitCover,
    //           //                               filterQuality:
    //           //                                   FilterQuality.medium),
    //           //                         ),
    //           //                       ),
    //           //                     );
    //           //                   default:
    //           //                     return Container();
    //           //                 }
    //           //               },
    //           //               connecting: (type) =>
    //           //                   const CircularProgressIndicator(),
    //           //               Error: () => const Center(child: Text('Error')),
    //           //             );
    //           //           },
    //           //         ),
    //           //         disconnected: () => Text('cc'),
    //           //       );
    //           //     }),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
