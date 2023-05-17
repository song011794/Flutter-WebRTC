import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../socket/socket_bloc.dart';



part 'web_rtc_bloc.freezed.dart';
part 'web_rtc_event.dart';
part 'web_rtc_state.dart';

class WebRTCBloc extends Bloc<WebRtcEvent, WebRtcState> {
  final RTCVideoRenderer localRenderer = RTCVideoRenderer();
  final RTCVideoRenderer remoteRenderer = RTCVideoRenderer();
  late final MediaStream? _localStream;
  late final RTCPeerConnection? _pc;

  late final SocketBloc _socketBloc;

  WebRTCBloc(this._socketBloc) : super(const WebRtcState.initial()) {
    on<_WebRtcInialize>((event, emit) async {
      String room = event.room;

      localRenderer.initialize();
      remoteRenderer.initialize();
      await _init(room, emit).then((value) => emit(const WebRtcState.ready()));
    });
  }

  Future _init(String room, Emitter<WebRtcState> emit) async {
    final config = {
      'iceServers': [
        {"url": "stun:stun.google.com:19302"},
      ]
    };

    final sdpConstraints = {
      "mandatory": {
        'offerToReceiveAudio': true,
        'offerToReceiveVideo': true,
      },
      "optional": []
    };

    _pc = await createPeerConnection(config, sdpConstraints);

    final mediaConstraints = {
      'audio': true,
      'video': {'facingMode': 'user'}
    };

    _localStream = await Helper.openCamera(mediaConstraints);

    _localStream!.getTracks().forEach((track) {
      _pc!.addTrack(track, _localStream!);
    });

    localRenderer.srcObject = _localStream;

    _pc!.onIceCandidate = (ice) {
      _sendIce(room, ice);
    };

    _pc!.onAddStream = (stream) {    
      remoteRenderer.srcObject = stream;
    };

    _socketBloc.add(SocketEvent.onSendJoin('join', {'room': room}));
  }

  Future sendOffer(String room) async {
    var offer = await _pc!.createOffer();
    _pc!.setLocalDescription(offer);

    _socketBloc.add(SocketEvent.onSendOffer(
        'offer', {'room': room, 'offerData': jsonEncode(offer.toMap())}));
  }

  Future gotOffer(RTCSessionDescription offer) async {
    await _pc!.setRemoteDescription(offer);
  }

  Future sendAnswer(String room) async {
    var answer = await _pc!.createAnswer();
    // await
    _pc!.setLocalDescription(answer);

    _socketBloc.add(SocketEvent.onSendAnswer(
        'answer', {'room': room, 'answerData': jsonEncode(answer.toMap())}));
  }

  Future gotAnswer(RTCSessionDescription answer) async {
    // await
    _pc!.setRemoteDescription(answer);
  }

  Future _sendIce(String room, RTCIceCandidate ice) async {
    print('send Ice');
    _socketBloc.add(SocketEvent.onSendIce(
        'ice', {'room': room, 'iceData': jsonEncode(ice.toMap())}));
  }

  Future gotIce(RTCIceCandidate ice) async {
    print('got Ice');
    await _pc!.addCandidate(ice);
  }

  @override
  Future<void> close() async{
    await localRenderer.dispose();
    await remoteRenderer.dispose();
    await _localStream?.dispose();
    await _pc?.close();
    return super.close();
  }  
}
