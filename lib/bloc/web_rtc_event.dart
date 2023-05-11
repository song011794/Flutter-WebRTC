part of 'web_rtc_bloc.dart';

@freezed
class WebRtcEvent with _$WebRtcEvent {
  const factory WebRtcEvent.initalize() = _WebRtcInialize;
  const factory WebRtcEvent.localConnecting() = _WebRtcLocalConnecting;
  const factory WebRtcEvent.localConnected() = _WebRtcLocalConnected;
  // const factory WebRtcEvent.onConnect() = _SocketOnConnect;
  // const factory WebRtcEvent.onConnectError() = _SocketConnectErrorEvent;
  // const factory WebRtcEvent.onConnectTimeout() = _SocketConnectTimeoutEvent;
  // const factory WebRtcEvent.onError() = _SocketErrorEvent; 
}
