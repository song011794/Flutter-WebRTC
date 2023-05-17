import 'package:flutter/material.dart';

import '../component/chat.dart';
import '../component/web_rtc_render.dart';

class WebRTCPage2 extends StatefulWidget {
  final String roomId;
  final String nickName;

  const WebRTCPage2({super.key, required this.roomId, required this.nickName});

  @override
  _WebRTCPageState createState() => _WebRTCPageState();
}

class _WebRTCPageState extends State<WebRTCPage2> {
  final GlobalKey _renderkey = GlobalKey();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            key: _renderkey,
            child: WebRtcRender(
              roomId: widget.roomId,
              nickName: widget.roomId,
              renderkey: _renderkey,
            ),
          ),
          Expanded(
              flex: 2,
              child: Chat(
                roomId: widget.roomId,
                nickName: widget.roomId,
              )),
        ],
      ),
    );
  }
}
