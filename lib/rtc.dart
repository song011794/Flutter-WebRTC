import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Rtc extends StatefulWidget {
  const Rtc({Key? key}) : super(key: key);

  @override
  _RtcState createState() => _RtcState();
}

class _RtcState extends State<Rtc> {
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
    await connectSocket();
    await joinRoom();
  }

  Future connectSocket() async {
    socket = IO.io(dotenv.get('SOCKET_HOST'),
        IO.OptionBuilder().setTransports(['websocket']).build());

    socket.onConnect((_) {
      print('연결 완료!');
    });
    //
    socket.on('joined', (data) => {});
    socket.on('offer', (data) => {});
    socket.on('answer', (data) => {});
    socket.on('ice', (data) => {});
  }

  Future joinRoom() async {
    final config = {'iceServers': []};
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Row(
        children: [
          Expanded(child: RTCVideoView(_localRenderer)),
          Expanded(child: RTCVideoView(_remoteRenderer))
        ],
      ),
    );
  }
}
