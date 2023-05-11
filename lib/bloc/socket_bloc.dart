import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'socket_bloc.freezed.dart';
part 'socket_event.dart';
part 'socket_state.dart';

class SocketBloc extends Bloc<SocketEvent, SocketState> {
  late final Socket _socket;

  SocketBloc() : super(const SocketState.initial()) {
    _socket = io(
      dotenv.get('SOCKET_HOST'),
      OptionBuilder().setTransports(['websocket']).build(),
    );

    _socket.onConnecting((data) => add(const _SocketConnectingEvent()));
    _socket.onConnect((_) => add(const _SocketOnConnect()));
    _socket.onConnectError((data) => add(const _SocketConnectErrorEvent()));
    _socket.onConnectTimeout((data) => add(const _SocketConnectTimeoutEvent()));
    _socket.onDisconnect((_) => add(const _SocketOnDisconnect()));
    _socket.onError((data) => add(const _SocketErrorEvent()));

    _socket.on('joined', (data) => add(const _SocketJoinedEvent()));
    _socket.on('offer', (data) => add(const _SocketOfferEvent()));
    _socket.on('answer', (data) => add(const _SocketAnswerEvent()));
    _socket.on('ice', (data) => add(const _SocketIceEvent()));

    // User events
    on<_SocketConnect>((event, emit) {
      _socket.connect();
    });

    on<_SocketDisconnect>((event, emit) {
      _socket.disconnect();
    });
    // Socket events
    on<_SocketConnectingEvent>((event, emit) {
      emit(SocketState.connected("Connecting"));
    });
    on<_SocketOnConnect>((event, emit) {
      debugPrint('연결 완료!');
      emit(SocketState.connected(_socket.id!));
    });
    on<_SocketConnectErrorEvent>((event, emit) {
      emit(SocketState.connected("Connection Error"));
    });
    on<_SocketConnectTimeoutEvent>((event, emit) {
      emit(SocketState.connected("Connection timeout"));
    });
    on<_SocketOnDisconnect>((event, emit) {
      emit(SocketState.disconnected());
    });
    on<_SocketErrorEvent>((event, emit) {
      emit(SocketState.connected("ErrorEvent"));
    });

    on<_SocketJoinedEvent>((event, emit) {
      emit(SocketState.connected("JoinedEvent"));
      
    });
    on<_SocketOfferEvent>((event, emit) {
      emit(SocketState.connected("OfferEvent"));
    });
    on<_SocketAnswerEvent>((event, emit) {
      emit(SocketState.connected("AnswerEvent"));
    });
    on<_SocketIceEvent>((event, emit) {
      emit(SocketState.connected("IceEvent"));
    });
  }
  @override
  Future<void> close() {
    _socket.dispose();
    return super.close();
  }
}
