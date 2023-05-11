import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:webrtc/webrtc_bloc.dart';

class WebRTCPage extends StatefulWidget {
  // final String roomId;
  // final bool isCaller;

  WebRTCPage(
      // {
      // required this.roomId, required this.isCaller
      // }
      );

  @override
  _WebRTCPageState createState() => _WebRTCPageState();
}

class _WebRTCPageState extends State<WebRTCPage> {
  final GlobalKey _renderkey = GlobalKey();
  final WebRTCBloc _bloc = WebRTCBloc();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  double _x = -1;
  double _y = -1;
  double localRenderSizeWidth = 150;
  double localRenderSizeHeight = 300;

  @override
  void initState() {
    super.initState();
    _bloc.initialize();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white.withAlpha(200),
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              key: _renderkey,
              flex: 2,
              child: Stack(
                children: [
                  BlocConsumer<WebRTCBloc, WebRTCState>(
                    bloc: _bloc,
                    listener: (context, state) {
                      if (state == WebRTCState.error) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('An error occurred')));
                      }
                    },
                    builder: (context, state) {
                      debugPrint('Bloc Build 1');
                      if (state == WebRTCState.connecting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (state == WebRTCState.remoteConnected) {
                        return RTCVideoView(
                          _bloc.remoteRenderer,
                          objectFit:
                              RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                          filterQuality: FilterQuality.medium,
                        );
                      } else {
                        return const Center(
                            child: Text('Waiting for connection...'));
                      }
                    },
                  ),
                  BlocBuilder<WebRTCBloc, WebRTCState>(
                      bloc: _bloc,
                      builder: (context, state) {
                        debugPrint('Bloc Build 2');
                        if (state == WebRTCState.remoteConnected) {
                          final RenderBox renderBox = _renderkey.currentContext!
                              .findRenderObject() as RenderBox;

                          return Positioned(
                            left:
                                _x < 0 ? size.width - localRenderSizeWidth : _x,
                            top: _y < 0
                                ? renderBox.size.height - localRenderSizeHeight
                                : _y,
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
                                    if (renderBox.size.height -
                                            localRenderSizeHeight <
                                        dragDetails.offset.dy) {
                                      _y = renderBox.size.height -
                                          localRenderSizeHeight;
                                    } else {
                                      _y = dragDetails.offset.dy;
                                    }
                                  }
                                });
                              },
                              feedback: SizedBox(
                                width: localRenderSizeWidth,
                                height: localRenderSizeHeight,
                                child: RTCVideoView(_bloc.localRenderer,
                                    objectFit: RTCVideoViewObjectFit
                                        .RTCVideoViewObjectFitCover,
                                    filterQuality: FilterQuality.medium),
                              ),
                              child: SizedBox(
                                width: localRenderSizeWidth,
                                height: localRenderSizeHeight,
                                child: RTCVideoView(_bloc.localRenderer,
                                    objectFit: RTCVideoViewObjectFit
                                        .RTCVideoViewObjectFitCover,
                                    filterQuality: FilterQuality.medium),
                              ),
                            ),
                          );
                        } else if (state == WebRTCState.connected) {
                          return RTCVideoView(_bloc.localRenderer,
                              objectFit: RTCVideoViewObjectFit
                                  .RTCVideoViewObjectFitCover,
                              filterQuality: FilterQuality.medium);
                        } else if (state == WebRTCState.connecting) {
                          return const CircularProgressIndicator();
                        } else {
                          return Container();
                        }
                      })
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(children: [
                Expanded(flex: 2, child: ListView()),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder()),
                    onFieldSubmitted: (value) {
                      debugPrint('aa : ${value}');
                    },
                  ),
                ))
              ]),
            )
          ],
        ));
  }
}
