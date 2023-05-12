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

  @override
  void initState() {
    super.initState();

    context
        .read<SocketBloc>()
        .add(SocketEvent.onSendJoin('join', {'room': widget.roomId}));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


  
          // Expanded(
          //   child: BlocBuilder(
          //     bloc: context.read<WebRTCBloc>(),
          //     builder: (context, state) {
          //       if (state == WebRtcState.connected('local')) {
          //         print(context.read<WebRTCBloc>().localRenderer);
  
          //         return RTCVideoView(
          //           context.read<WebRTCBloc>().localRenderer,
          //           objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
          //           filterQuality: FilterQuality.medium,
          //         );
          //       } else {
          //         return CircularProgressIndicator();
          //       }
          //     },
          //   ),
  
             Expanded(
               child: BlocBuilder(
                  bloc: context.read<SocketBloc>(),
                  builder: (context, state) {
                    if (state == SocketState.connected('JoinedEvent')) {
                      return BlocBuilder(
                          bloc: context.read<WebRTCBloc>(),
                          builder: (context, state) {
                            if (state == WebRtcState.connected('local')) {
                              return RTCVideoView(
                                context.read<WebRTCBloc>().localRenderer,
                                objectFit:
                                    RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                                filterQuality: FilterQuality.medium,
                              );
                            } else {
                              return CircularProgressIndicator();
                            }
                          });
                    }
               
                    print('socketBloc : ${state.toString()}');
               
                    return Container();
                  }),
             ),
       
  
        // BlocBuilder(
        //     bloc: webRTCBloc,
        //     builder: (context, state) {
        //       print('webRTCBloc : ${state.toString()}');

        //       return Container();
        //     }),
      ],
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   // final webRTCBloc = context.watch<WebRTCBloc>();

  //   Size size = MediaQuery.of(context).size;
  //   return MultiBlocListener(
  //     listeners: [
  //       BlocListener(
  //           bloc: context.watch<SocketBloc>(),
  //           listener: (context, state) {
  //             print('Socket : ${state.toString()}');

  //             // if (state == const SocketState.connected('SendJoinEvent'))
  //             //   print('SendJoinEvent');
  //             // else if (state == const SocketState.connected('JoinedEvent'))
  //             //   print('JoinedEvent');
  //           }),
  //       BlocListener(
  //           bloc: context.watch<WebRTCBloc>(),
  //           listener: (context, state) {
  //             print('WebRTC ${state.toString()}');
  //           }),
  //     ],

  //     // (context, state) {
  //     //   if (state == const SocketState.connected('SendJoinEvent'))
  //     //     print('SendJoinEvent');
  //     //   else if (state == const SocketState.connected('JoinedEvent'))
  //     //     print('JoinedEvent');
  //     // },
  //     child: Scaffold(
  //       key: _scaffoldKey,
  //       appBar: AppBar(
  //         foregroundColor: Colors.black,
  //         title: const Text(
  //           'Home',
  //           style: TextStyle(color: Colors.black),
  //         ),
  //         centerTitle: true,
  //         backgroundColor: Colors.white.withAlpha(200),
  //         elevation: 0,
  //       ),
  //       body: Container(
  //         color: Colors.blue,
  //         child: BlocConsumer<SocketBloc, SocketState>(
  //           bloc: context.watch<SocketBloc>(),
  //           builder: (context, state) {
  //             if (state == const SocketState.connected('SendJoinEvent')) {
  //               print('SendJoinEvent 2');

  //               return Container(
  //                 color: Colors.amber,
  //               );
  //             } else if (state == const SocketState.connected('JoinedEvent')) {
  //               print('JoinedEvent 2');

  //               return Center(
  //                   child: Text(
  //                 'KKK',
  //                 style: TextStyle(color: Colors.black),
  //               ));
  //             } else {
  //               print('ssss : ${state.toString()}');
  //               return Container();
  //             }
  //           },
  //           listener: (context, state) {
  //             if (state == const SocketState.connected('SendJoinEvent'))
  //               print('SendJoinEvent');
  //             else if (state == const SocketState.connected('JoinedEvent'))
  //               print('JoinedEvent 2');
  //           },
  //         ),
  //       ),

  //       // Column(
  //       //   children: [
  //       //     BlocBuilder(
  //       //         bloc: context.watch<SocketBloc>(),
  //       //         builder: (context, state) {
  //       //           if (state == const SocketState.connected('SendJoinEvent')) {
  //       //             print('SendJoinEvent 2');

  //       //             return Container();
  //       //           } else if (state ==
  //       //               const SocketState.connected('JoinedEvent')) {
  //       //             print('JoinedEvent 2');

  //       //             return Text('KKK');
  //       //           }

  //       //           return Container();
  //       //         }),

  //       //     // if (webRTCBloc.state == const WebRtcState.initial())
  //       //     //   Container()
  //       //     // else if (webRTCBloc.state ==
  //       //     //     const WebRtcState.connecting('local'))
  //       //     //   const Center(child: CircularProgressIndicator())
  //       //     // else if (webRTCBloc.state == const WebRtcState.connected('local'))
  //       //     //   if (webRTCBloc.socketBloc.state ==
  //       //     //       const SocketState.connected('SendJoinEvent'))
  //       //     //     Text('LLL')
  //       //     //   else if (webRTCBloc.socketBloc.state ==
  //       //     //       const SocketState.connected('JoinedEvent'))
  //       //     //     Text('KKK')
  //       //     // BlocConsumer<SocketBloc, SocketState>(
  //       //     //     bloc: context.watch<SocketBloc>(),
  //       //     //     builder: (context, state) {
  //       //     //       if (state == const SocketState.connected('SendJoinEvent')) {
  //       //     //         return Text('LLL');
  //       //     //       }
  //       //     //      else  if (state == const SocketState.disconnected()) {
  //       //     //         return Text('QQQ');
  //       //     //       }

  //       //     //       else if (state == const SocketState.connected('JoinedEvent')) {
  //       //     //         return RTCVideoView(webRTCBloc.localRenderer,
  //       //     //             objectFit:
  //       //     //                 RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
  //       //     //             filterQuality: FilterQuality.medium);
  //       //     //       } else {
  //       //     //         return Container();
  //       //     //       }
  //       //     //     },
  //       //     //     listener: (context, state) {})

  //       //     // if (socketBloc.state ==
  //       //     //     const SocketState.connected('JoinedEvent'))
  //       //     //   RTCVideoView(webRTCBloc.localRenderer,
  //       //     //       objectFit:
  //       //     //           RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
  //       //     //       filterQuality: FilterQuality.medium),
  //       //     // Expanded(
  //       //     //   flex: 1,
  //       //     //   child: Column(children: [
  //       //     //     Expanded(flex: 2, child: ListView()),
  //       //     //     Expanded(
  //       //     //         child: Padding(
  //       //     //       padding: const EdgeInsets.all(8.0),
  //       //     //       child: TextFormField(
  //       //     //         decoration: const InputDecoration(
  //       //     //             enabledBorder: OutlineInputBorder(),
  //       //     //             focusedBorder: OutlineInputBorder()),
  //       //     //         onFieldSubmitted: (value) {
  //       //     //           debugPrint('aa : ${value}');
  //       //     //         },
  //       //     //       ),
  //       //     //     ))
  //       //     //   ]),
  //       //     // )
  //       //   ],
  //       // )
  //     ),
  //   );
  // }
}
