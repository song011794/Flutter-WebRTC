import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'socket_bloc.freezed.dart';
part 'socket_event.dart';
part 'socket_state.dart';

class SocketBloc extends Bloc<SocketEvent, SocketState> {
  late final IO.Socket socket;

  SocketBloc() : super(const SocketState.initial()) {
    socket = IO.io(
      dotenv.get('SOCKET_HOST'),
      IO.OptionBuilder().setTransports(['websocket']).build(),
    );

    socket.onConnect((_) => add(const _SocketOnConnect()));
    socket.onConnectError((data) => add(const _SocketConnectErrorEvent()));
    socket.onConnectTimeout((data) => add(const _SocketConnectTimeoutEvent()));
    socket.onDisconnect((_) => add(const _SocketOnDisconnect()));
    socket.onError((data) => add(const _SocketErrorEvent()));

    socket.on('joined', (data) {
      add(const _SocketJoinedEvent());
    });
    socket.on('offer', (data) => add(_SocketGotOfferEvent(data)));
    socket.on('answer', (data) => add(_SocketGotAnswerEvent(data)));
    socket.on('ice', (data) {
      add(_SocketGotIceEvent(data));
    });

    socket.on('message', (data) => add(_SocketGotMassageEvent(data)));

    on<_SocketSendMassageEvent>((event, emit) {
      socket.emit(event.event, event.data);
    });

    on<_SocketGotMassageEvent>((event, emit) {
      emit(const _SocketReceiveMessage({'nickName': '', 'payload': ''}));
      print(event.toString());
      emit(_SocketReceiveMessage(event.data));
    });

    // User events
    on<_SocketConnect>((event, emit) {
      socket.connect();
    });

    on<_SocketDisconnect>((event, emit) {
      debugPrint('연결 종료!');
      socket.disconnect();
    });
    on<_SocketOnConnect>((event, emit) {
      debugPrint('연결 완료!');
      emit(const SocketState.connected());
    });
    on<_SocketConnectErrorEvent>((event, emit) {
      debugPrint('연결 실패!');
      // emit(const SocketState.);
    });
    on<_SocketConnectTimeoutEvent>((event, emit) {
      debugPrint('연결 타임아웃!');
      emit(const SocketState.timeout());
    });
    on<_SocketOnDisconnect>((event, emit) {
      emit(const SocketState.disconnected());
    });
    on<_SocketErrorEvent>((event, emit) {
      debugPrint('연결 실패!');
      emit(const SocketState.error());
    });

    //Send Join
    on<_SocketSendJoinEvent>((event, emit) async {
      socket.emit(event.event, event.data);
    });

    //Receive Join
    on<_SocketJoinedEvent>((event, emit) {
      emit(const SocketState.receiveJoined());
    });

    //Send Offer
    on<_SocketSendOfferEvent>((event, emit) {
      socket.emit(event.event, event.data);
    });

    //Receive Offer
    on<_SocketGotOfferEvent>(
        (event, emit) => emit(SocketState.receiveOffer(event.data)));

    //Send Answer
    on<_SocketSendAnswerEvent>(
        (event, emit) => socket.emit(event.event, event.data));

    //Receive Answer
    on<_SocketGotAnswerEvent>(
        (event, emit) => emit(SocketState.receiveAnswer(event.data)));

    //Send Ice
    on<_SocketSendIceEvent>((event, emit) {
      socket.emit(event.event, event.data);
    });

    //Receive Ice
    on<_SocketGotIceEvent>((event, emit) {
      emit(SocketState.receiveIce(event.data));
    });
  }
  @override
  Future<void> close() {
    socket.dispose();
    return super.close();
  }
}
