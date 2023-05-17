part of 'web_rtc_bloc.dart';

@freezed
class WebRtcState with _$WebRtcState {
  const factory WebRtcState.initial() = _WebRtcInitial; 
  const factory WebRtcState.ready() = _WebRtcReady;   
}