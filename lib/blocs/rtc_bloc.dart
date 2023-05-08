// import 'dart:convert';

// import 'package:equatable/equatable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_webrtc/flutter_webrtc.dart';
// import 'package:socket_io_client/socket_io_client.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

// class RtcBloc extends Bloc<SocketBlockEvent, String> {  
//   late final  RTCPeerConnection pc;

//   RtcBloc() : super('')  {
//      final config = {
//       'iceServers': [
//         {"url": "stun:stun.google.com:19302"},
//       ]
//     };

//     final sdpConstraints = {
//       "mandatory": {
//         'offerToReceiveAudio': true,
//         'offerToReceiveVideo': true,
//       },
//       "optional": []
//     };

//     pc = await createPeerConnection(config, sdpConstraints);

//     final mediaConstraints = {
//       'audio': true,
//       'video': {'facingMode': 'user'}
//     };

//     _localStream = await Helper.openCamera(mediaConstraints);

//     _localStream!.getTracks().forEach((track) {
//       print('localStream');
//       pc!.addTrack(track, _localStream!);
//     });

//     _localRenderer.srcObject = _localStream;
//     setState(() {});

//     pc!.onIceCandidate = (ice) {
//       _sendIce(ice);
//     };

//     pc!.onAddStream = (stream) {
//       print('remoteRenderer');
//       _remoteRenderer.srcObject = stream;
//       setState(() {});
//     };

//     pc!.onRemoveStream = (stream) {
//       print('RemoveStream');
//     };
//   }
// }

// class SocketBlockEvent extends Equatable {
//   final String data;
//   const SocketBlockEvent(this.data);

//   @override
//   // TODO: implement props
//   List<Object?> get props => [];
// }

// // class SocketInitEvent extends SocketBlockEvent {}
