import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:webrtc/bloc/socket_bloc.dart';

part 'web_rtc_bloc.freezed.dart';
part 'web_rtc_event.dart';
part 'web_rtc_state.dart';

class WebRTCBloc extends Bloc<WebRtcEvent, WebRtcState> {
  late final RTCVideoRenderer localRenderer = RTCVideoRenderer();
  late final RTCVideoRenderer remoteRenderer = RTCVideoRenderer();
  late final MediaStream? _localStream;
  late final RTCPeerConnection? _pc;

  late final SocketBloc socketBloc;

  WebRTCBloc(this.socketBloc) : super(const WebRtcState.initial()) {
    socketBloc.socket.on('massage', (data) {
      print(data);
    });

    on<_WebRtcInialize>((event, emit) {
      localRenderer.initialize();
      remoteRenderer.initialize();
      emit(const WebRtcState.connecting('local'));
      add(const WebRtcEvent.localConnecting());
    });

    on<_WebRtcLocalConnecting>((event, emit) async {
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
        _sendIce(ice);
      };

      _pc!.onAddStream = (stream) {
        remoteRenderer.srcObject = stream;
      };      

      add(const WebRtcEvent.localConnected());
    });

    on<_WebRtcLocalConnected>((event, emit) async {
      await Future.delayed(const Duration(seconds: 1));
      emit(const WebRtcState.connected('local'));
      socketBloc.add(const SocketEvent.onSendJoin('join', {'room': 'dogRoom'}));
    });

    add(const WebRtcEvent.initalize());
  }

  Future _sendOffer() async {
    var offer = await _pc!.createOffer();
    _pc!.setLocalDescription(offer);

    socketBloc.add(SocketEvent.onSendOffer(
        'offer', {'room': 'dogRoom', 'offerData': jsonEncode(offer.toMap())}));
  }

  Future _gotOffer(RTCSessionDescription offer) async {
    // debugPrint('got offer');
    _pc!.setRemoteDescription(offer);
  }

  Future _sendAnswer() async {
    // debugPrint('send answer');
    var answer = await _pc!.createAnswer();
    _pc!.setLocalDescription(answer);
    socketBloc.add(SocketEvent.onSendAnswer('answer',
        {'room': 'dogRoom', 'answerData': jsonEncode(answer.toMap())}));
  }

  Future _gotAnswer(RTCSessionDescription answer) async {
    // debugPrint('got answer');
    _pc!.setRemoteDescription(answer);
  }

  Future _sendIce(RTCIceCandidate ice) async {
    print('_sendIce');
    socketBloc.add(SocketEvent.onSendIce(
        'ice', {'room': 'dogRoom', 'iceData': jsonEncode(ice.toMap())}));
  }

  Future _gotIce(RTCIceCandidate ice) async {
    _pc!.addCandidate(ice);
  }
}
