part of 'socket_bloc.dart';

@freezed
class SocketState with _$SocketState {
  const factory SocketState.initial() = _SocketInitial;
  const factory SocketState.connected() =
      _SocketConnected;
  const factory SocketState.disconnected() = _SocketDisonnected;
  const factory SocketState.error() = _SocketError;
  const factory SocketState.timeout() = _SocketTimeout;
  const factory SocketState.receiveJoined() = _SocketReceiveJoined;
  const factory SocketState.receiveOffer([dynamic data]) = _SocketReceiveOffer;
  const factory SocketState.receiveAnswer([dynamic data]) =
      _SocketReceiveAnswer;
  const factory SocketState.receiveIce([dynamic data]) = _SocketReceiveIce;

  
}
