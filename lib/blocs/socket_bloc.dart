import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SocketBloc extends Bloc<SocketBlockEvent, String> {  
  late final Socket _socket;

  SocketBloc() : super('') {
    _socket = io(dotenv.get('SOCKET_HOST'),
        OptionBuilder().setTransports(['websocket']).build());

    _socket.onConnect((_) => print('연결 완료'));
    _socket.on('joined', (data) {
      add(SocketBlockEvent(data));
      // _sendOffer();
    });

    _socket.on('offer', (data) async {
      data = jsonDecode(data);
      // await _gotOffer(RTCSessionDescription(data['sdp'], data['type']));
      // await _sendAnswer();
    });

    _socket.on('answer', (data) {
      data = jsonDecode(data);
      // _gotAnswer(RTCSessionDescription(data['sdp'], data['type']));
    });

    _socket.on('ice', (data) {
      data = jsonDecode(data);
      // _gotIce(RTCIceCandidate(
      //     data['candidate'], data['sdpMid'], data['sdpMLineIndex']));
    });
  }
}

class SocketBlockEvent extends Equatable {
  final String data;
  const SocketBlockEvent(this.data);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

// class SocketInitEvent extends SocketBlockEvent {}
