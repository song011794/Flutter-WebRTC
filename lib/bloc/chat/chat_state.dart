part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial([@Default([]) List<Map<String,dynamic>> data]) = _ChatInitial;
  const factory ChatState.reviceMessage([@Default([]) List<Map<String,dynamic>> data]) = _SocketReceiveMsaage;

  const factory ChatState.sendMessage([@Default([]) List<Map<String,dynamic>> data]) = _SocketSendMsaage;

  // const factory ChatState.reloadMessage([@Default([]) List<Map<String,dynamic>> data]) = _SocketReloadMsaage;
}
