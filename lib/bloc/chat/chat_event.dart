part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.onRecieve([dynamic data]) = _ChatReceive;  
  const factory ChatEvent.onSend(String text, String nickName) = _ChatSend;  
}
