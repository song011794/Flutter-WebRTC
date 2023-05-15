import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../socket/socket_bloc.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  late final SocketBloc _socketBloc;

  ChatBloc(this._socketBloc) : super(const ChatState.initial()) {
    on<_ChatReceive>((event, emit) {
      final messageData = event.data;

      if (messageData['nickName'].toString().isEmpty ||
          messageData['payload'].toString().isEmpty) {
        return;
      }

      emit(_SocketReceiveMsaage([
        ...state.data,
        {
          'isReceive': true,
          'payload': messageData['payload'],
          'nickName': messageData['nickName']
        }
      ]));
    });

    on<_ChatSend>((event, emit) {
      emit(ChatState.sendMessage([
        ...state.data,
        {'isReceive': false, 'payload': event.text, 'nickName': event.nickName}
      ]));
    });
  }

  void sendMessage(
      {required String text,
      required String roomId,
      required String nickName}) {
    _socketBloc.add(SocketEvent.onSendMassage(
        'message', {'type': 'newMessage', 'payload': text, 'room': roomId}));

    add(_ChatSend(text, nickName));
  }

  void sendNickNmae({required String nickName}) {
    _socketBloc.add(SocketEvent.onSendMassage('message', {
      'type': 'nickName',
      'payload': nickName,
    }));
  }
}
