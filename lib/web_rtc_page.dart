import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webrtc/bloc/socket_bloc.dart';

import 'package:webrtc/bloc/web_rtc_bloc.dart';

class WebRTCPage2 extends StatefulWidget {
  // final String roomId;
  // final bool isCaller;

  WebRTCPage2(
      // {
      // required this.roomId, required this.isCaller
      // }
      );

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
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {    
    final webRTCBloc = context.watch<WebRTCBloc>();    
    final socketBloc = context.watch<SocketBloc>(); 

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
                  if (webRTCBloc.state == const WebRtcState.initial())
                    Container()
                  else if (webRTCBloc.state == const WebRtcState.connecting('local'))
                    const Center(child: CircularProgressIndicator())
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
