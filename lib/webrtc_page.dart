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
  final WebRTCBloc _bloc = WebRTCBloc();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

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
    return Scaffold(
      key: _scaffoldKey,
      body: BlocConsumer<WebRTCBloc, WebRTCState>(
        bloc: _bloc,
        listener: (context, state) {
          if (state == WebRTCState.error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error occurred')));        
          }
        },
        builder: (context, state) {
          if (state == WebRTCState.connecting) {
            return Center(child: CircularProgressIndicator());
          } else if (state == WebRTCState.connected) {
            return _buildConnectedUI();
          } else {
            return Center(child: Text('Waiting for connection...'));
          }
        },
      ),
    );
  }

  Widget _buildConnectedUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: RTCVideoView(
            _bloc.localRenderer,
            objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
          ),
        ),
        Container(
          height: 100,
          child: RTCVideoView(
            _bloc.remoteRenderer,
            mirror: true,
            objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
          ),
        ),
      ],
    );
  }
}
