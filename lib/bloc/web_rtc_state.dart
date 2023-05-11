part of 'web_rtc_bloc.dart';

@freezed
class WebRtcState with _$WebRtcState {
  const factory WebRtcState.initial() = _WebRtcInitial;
  const factory WebRtcState.connected(String status) = _WebRtcConnected;
  const factory WebRtcState.connecting(String status) = _WebRtcConnecting;
  const factory WebRtcState.Error() = _WebRtcError;
}