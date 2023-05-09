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
  double _x = 0;
  double _y = 0;

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
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
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
                            objectFit: RTCVideoViewObjectFit
                                .RTCVideoViewObjectFitCover,
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
                            return Positioned(
                              left: _x,
                              top: _y,
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
                                      if (size.width - 150 <
                                          dragDetails.offset.dx) {
                                        _x = size.width - 150;
                                      } else {
                                        _x = dragDetails.offset.dx;
                                      }
                                    }

                                    // 위쪽으로 넘어갈 경우
                                    if (dragDetails.offset.dy < 0) {
                                      _y = 0;
                                    } else {
                                      // 아래쪽으로 넘어갈 경우
                                      final RenderBox renderBox = _renderkey
                                          .currentContext!
                                          .findRenderObject() as RenderBox;

                                      if (renderBox.size.height - 300 <
                                          dragDetails.offset.dy) {
                                        _y = renderBox.size.height - 300;
                                      } else {
                                        _y = dragDetails.offset.dy;
                                      }
                                    }
                                  });
                                },
                                feedback: SizedBox(
                                  width: 150,
                                  height: 300,
                                  child: RTCVideoView(
                                    _bloc.localRenderer,
                                    objectFit: RTCVideoViewObjectFit
                                        .RTCVideoViewObjectFitCover,
                                  ),
                                ),
                                child: SizedBox(
                                  width: 150,
                                  height: 300,
                                  child: RTCVideoView(
                                    _bloc.localRenderer,
                                    objectFit: RTCVideoViewObjectFit
                                        .RTCVideoViewObjectFitCover,
                                  ),
                                ),
                              ),
                            );
                          } else if (state == WebRTCState.connected) {
                            return RTCVideoView(
                              _bloc.localRenderer,
                              objectFit: RTCVideoViewObjectFit
                                  .RTCVideoViewObjectFitCover,
                            );
                          } else {
                            return const CircularProgressIndicator();
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
                    ),
                  ))
                ]),
              )
            ],
          )),
    );
  }

  
}
