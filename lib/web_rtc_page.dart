import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

import 'package:webrtc/bloc/socket_bloc.dart';

import 'package:webrtc/bloc/web_rtc_bloc.dart';

import 'component/web_rtc_render.dart';

class WebRTCPage2 extends StatefulWidget {
  final String roomId;
  final String nickName;

  const WebRTCPage2({super.key, required this.roomId, required this.nickName});

  @override
  _WebRTCPageState createState() => _WebRTCPageState();
}

class _WebRTCPageState extends State<WebRTCPage2> {
  final GlobalKey _renderkey = GlobalKey();
  // double _x = -1;
  // double _y = -1;
  // double localRenderSizeWidth = 150;
  // double localRenderSizeHeight = 300;

  // late final SocketBloc _socketBloc;
  // late final WebRTCBloc _webRTCBloc;
  // @override
  // void initState() {
  //   super.initState();
  //   _socketBloc = context.read<SocketBloc>();
  //   _webRTCBloc = context.read<WebRTCBloc>();
  //   _webRTCBloc.add(WebRtcEvent.initalize(widget.roomId));
  //   _socketBloc.add(SocketEvent.onSendJoin('join', {'room': widget.roomId}));
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   context.read<WebRTCBloc>().dispose();
  // }

  PreferredSizeWidget _appBar() => AppBar(
        foregroundColor: Colors.black,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white.withAlpha(200),
        elevation: 0,
      );

  // Widget onlyLocalRender(Size size, GlobalKey<State<StatefulWidget>> scaffoldKey) {
  //   return BlocBuilder<WebRTCBloc, WebRtcState>(
  //       bloc: _webRTCBloc,
  //       builder: (context, state) {
  //         return state.when(
  //             initial: () => const Text('Waiting for connection...'),
  //             ready: () => RTCVideoView(_webRTCBloc.localRenderer,
  //                 objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
  //                 filterQuality: FilterQuality.medium), 
  //                 remote: () {  
  //                   return localAndRemoteRender( size, scaffoldKey);
  //                 });
  //       });
  // }

  // Widget localAndRemoteRender(
  //     Size size, GlobalKey<State<StatefulWidget>> scaffoldKey) {
  //   final RenderBox renderBox =
  //       _renderkey.currentContext!.findRenderObject() as RenderBox;

  //   return Stack(
  //     children: [
  //       RTCVideoView(_webRTCBloc.remoteRenderer,
  //           objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
  //           filterQuality: FilterQuality.medium),
  //       Positioned(
  //         left: _x < 0 ? size.width - localRenderSizeWidth : _x,
  //         top: _y < 0 ? renderBox.size.height - localRenderSizeHeight : _y,
  //         child: Draggable(
  //           onDragEnd: (dragDetails) {
  //             setState(() {
  //               size.width;
  //               size.height;

  //               // 왼쪽으로 넘어갈 경우
  //               if (dragDetails.offset.dx < 0) {
  //                 _x = 0;
  //               } else {
  //                 // 오른쪽으로 넘어갈 경우
  //                 if (size.width - localRenderSizeWidth <
  //                     dragDetails.offset.dx) {
  //                   _x = size.width - localRenderSizeWidth;
  //                 } else {
  //                   _x = dragDetails.offset.dx;
  //                 }
  //               }

  //               // 위쪽으로 넘어갈 경우
  //               if (dragDetails.offset.dy < 0) {
  //                 _y = 0;
  //               } else {
  //                 // 아래쪽으로 넘어갈 경우
  //                 if (renderBox.size.height - localRenderSizeHeight <
  //                     dragDetails.offset.dy) {
  //                   _y = renderBox.size.height - localRenderSizeHeight;
  //                 } else {
  //                   _y = dragDetails.offset.dy;
  //                 }
  //               }
  //             });
  //           },
  //           feedback: SizedBox(
  //             width: localRenderSizeWidth,
  //             height: localRenderSizeHeight,
  //             child: RTCVideoView(_webRTCBloc.localRenderer,
  //                 objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
  //                 filterQuality: FilterQuality.medium),
  //           ),
  //           child: SizedBox(
  //             width: localRenderSizeWidth,
  //             height: localRenderSizeHeight,
  //             child: RTCVideoView(_webRTCBloc.localRenderer,
  //                 objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
  //                 filterQuality: FilterQuality.medium),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: _appBar(),
      body: Column(
        children: [
          Expanded(
            key: _renderkey,
            child:
                WebRtcRender(
                  roomId: widget.roomId,
                  nickName: widget.roomId,
                  renderkey: _renderkey,
                ),
            //     BlocConsumer<SocketBloc, SocketState>(
            //   bloc: _socketBloc,
            //   listener: (context, state) {
            //     state.when(
            //         initial: () => debugPrint('init'),
            //         connected: () {
            //           debugPrint('connected');
            //           // Future.delayed(
            //           //    const Duration(seconds: 3),
            //           //     () => _socketBloc.add(SocketEvent.onSendJoin(
            //           //         'join', {'room': widget.roomId})));
            //           _socketBloc.add(SocketEvent.onSendJoin(
            //               'join', {'room': widget.roomId}));
            //         },
            //         disconnected: () => debugPrint('disconnected'),
            //         receiveJoined: () {
            //           debugPrint('receiveJoined');
            //           _webRTCBloc.sendOffer(widget.roomId);
            //         },
            //         receiveOffer: (data) async {
            //           debugPrint('receiveOffer');
            //           final offerData = jsonDecode(data);
            //           await _webRTCBloc
            //               .gotOffer(RTCSessionDescription(
            //                   offerData['sdp'], offerData['type']))
            //               .whenComplete(() async =>
            //                   await _webRTCBloc.sendAnswer(widget.roomId));
            //         },
            //         receiveAnswer: (data) async {
            //           debugPrint('receiveAnswer');
            //           final answerData = jsonDecode(data);
            //           await _webRTCBloc.gotAnswer(RTCSessionDescription(
            //               answerData['sdp'], answerData['type']));
            //         },
            //         receiveIce: (data) async {
            //           debugPrint('receiveIce');
            //           final iceData = jsonDecode(data);
            //           await _webRTCBloc.gotIce(RTCIceCandidate(
            //               iceData['candidate'],
            //               iceData['sdpMid'],
            //               iceData['sdpMLineIndex']));
            //         },
            //         error: () => debugPrint('error'),
            //         timeout: () => debugPrint('timeout'));
            //   },
            //   builder: (context, state) {
            //     return state.maybeWhen(
            //       orElse: () => onlyLocalRender(size, _renderkey),
            //       receiveAnswer: (data) =>
            //           localAndRemoteRender(size, _renderkey),
            //       receiveIce: (data) => localAndRemoteRender(size, _renderkey),
            //     );
            //   },
            // ),
          ),
        ],
      ),
    );
  }
}
