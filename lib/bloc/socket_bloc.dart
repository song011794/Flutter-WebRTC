import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'socket_bloc.freezed.dart';
part 'socket_event.dart';
part 'socket_state.dart';

class SocketBloc extends Bloc<SocketEvent, SocketState> {
  late final Socket socket;

  SocketBloc() : super(const SocketState.initial()) {
    socket = io(
      dotenv.get('SOCKET_HOST'),
      OptionBuilder().setTransports(['websocket']).build(),
    );

    socket.onConnecting((data) => add(const _SocketConnectingEvent()));
    socket.onConnect((_) => add(const _SocketOnConnect()));
    socket.onConnectError((data) => add(const _SocketConnectErrorEvent()));
    socket.onConnectTimeout((data) => add(const _SocketConnectTimeoutEvent()));
    socket.onDisconnect((_) => add(const _SocketOnDisconnect()));
    socket.onError((data) => add(const _SocketErrorEvent()));

    socket.on('joined', (data) {
      print('asdad');
      add(const _SocketJoinedEvent());
    });
    socket.on('offer', (data) => add(const _SocketGotOfferEvent()));
    socket.on('answer', (data) => add(const _SocketGotAnswerEvent()));
    socket.on('ice', (data) => add(const _SocketGotIceEvent()));
    socket.on('massage', (data) => add(_SocketGotMassageEvent(data)));

    on<_SocketGotMassageEvent>((event, emit) {
      print(event.toString());
    });

    // User events
    on<_SocketConnect>((event, emit) {
      socket.connect();
    });

    on<_SocketDisconnect>((event, emit) {
      debugPrint('연결 종료!');
      socket.disconnect();
    });
    // Socket events
    on<_SocketConnectingEvent>((event, emit) {
      debugPrint('연결 중!');
      emit(const SocketState.connected("Connecting"));
    });
    on<_SocketOnConnect>((event, emit) {
      debugPrint('연결 완료!');
      emit(SocketState.connected(socket.id!));
    });
    on<_SocketConnectErrorEvent>((event, emit) {
      debugPrint('연결 실패!');
      emit(const SocketState.connected("Connection Error"));
    });
    on<_SocketConnectTimeoutEvent>((event, emit) {
      debugPrint('연결 타임아웃!');
      emit(const SocketState.connected("Connection timeout"));
    });
    on<_SocketOnDisconnect>((event, emit) {
      emit(const SocketState.disconnected());
    });
    on<_SocketErrorEvent>((event, emit) {
      debugPrint('연결 실패!');
      emit(const SocketState.connected("ErrorEvent"));
    });

    on<_SocketSendJoinEvent>((event, emit) async {
      socket.emit(event.event, event.data);
      emit(SocketState.connected("SendJoinEvent"));
    });

    on<_SocketJoinedEvent>((event, emit) {
      emit(const SocketState.connected("JoinedEvent"));
    });

    on<_SocketSendOfferEvent>((event, emit) {
      socket.emit(event.event, event.data);
      emit(SocketState.connected("OfferEvent"));
    });
    on<_SocketGotOfferEvent>((event, emit) {
      emit(SocketState.connected("OfferEvent"));
    });

    on<_SocketSendAnswerEvent>((event, emit) {
      socket.emit(event.event, event.data);
      emit(SocketState.connected("AnswerEvent"));
    });
    on<_SocketGotAnswerEvent>((event, emit) {
      emit(SocketState.connected("AnswerEvent"));
    });

    on<_SocketSendIceEvent>((event, emit) {
      socket.emit(event.event, event.data);
      emit(SocketState.connected("IceEvent"));
    });
    on<_SocketGotIceEvent>((event, emit) {
      emit(SocketState.connected("IceEvent"));
    });

    on<_SocketSendMassageEvent>((event, emit) {
      socket.emit(event.event, event.data);

      // emit(SocketState.connected("SendJoinEvent"));
    });
  }
  @override
  Future<void> close() {
    socket.dispose();
    return super.close();
  }
}
