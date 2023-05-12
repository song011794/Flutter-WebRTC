part of 'socket_bloc.dart';

@freezed
class SocketEvent with _$SocketEvent {
  const factory SocketEvent.connect() = _SocketConnect;
  const factory SocketEvent.connecting() = _SocketConnectingEvent;
  const factory SocketEvent.onConnect() = _SocketOnConnect;
  const factory SocketEvent.onConnectError() = _SocketConnectErrorEvent;
  const factory SocketEvent.onConnectTimeout() = _SocketConnectTimeoutEvent;
  const factory SocketEvent.onError() = _SocketErrorEvent;
  const factory SocketEvent.disconnect() = _SocketDisconnect;
  const factory SocketEvent.onDisconnect() = _SocketOnDisconnect;

const factory SocketEvent.onSendJoin(String event, [dynamic data]) = _SocketSendJoinEvent;
  const factory SocketEvent.onJoined() = _SocketJoinedEvent;
  const factory SocketEvent.onSendOffer(String event, [dynamic data]) =
      _SocketSendOfferEvent;
  const factory SocketEvent.onGotOffer([dynamic data]) = _SocketGotOfferEvent;
  const factory SocketEvent.onSendAnswer(String event, [dynamic data]) =
      _SocketSendAnswerEvent;
  const factory SocketEvent.onGotAnswer([dynamic data]) = _SocketGotAnswerEvent;
  const factory SocketEvent.onSendIce(String event, [dynamic data]) =
      _SocketSendIceEvent;
  const factory SocketEvent.onGotIce([dynamic data]) = _SocketGotIceEvent;


  const factory SocketEvent.onSendMassage(String event, [dynamic data]) =
      _SocketSendMassageEvent;

      const factory SocketEvent.onGotMassage(String event, [dynamic data]) =
      _SocketGotMassageEvent;
}
