part of 'web_rtc_bloc.dart';

@freezed
class WebRtcEvent with _$WebRtcEvent {
  const factory WebRtcEvent.initalize(String room) = _WebRtcInialize;
  const factory WebRtcEvent.localConnecting() = _WebRtcLocalConnecting;
  const factory WebRtcEvent.localConnected() = _WebRtcLocalConnected;
  const factory WebRtcEvent.remoteConnected() = _WebRtcRemoteConnected;
  const factory WebRtcEvent.remoteConnecting() = _WebRtcRemoteConnecting; 


  const factory WebRtcEvent.sendOffer(String room) = _WebRtcSendOffer; 

  const factory WebRtcEvent.gotAnswer(data) = _WebRtcGotAnswer;

  const factory WebRtcEvent.gotIce(data) = _WebRtcGotIce;
}
