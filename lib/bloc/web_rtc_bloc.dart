import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

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

    on<_WebRtcInialize>(
      (event, emit) async {     
        String room = event.room;

        localRenderer.initialize();
        remoteRenderer.initialize();
        await _init(room, emit);

        // socketBloc.add(SocketEvent.onSendJoin('join', {'room': room}));
        emit(const WebRtcState.connected('local'));
      },
    );

    on<_WebRtcLocalConnected>((event, emit) async {
      emit(const WebRtcState.connected('local'));
      add(const WebRtcEvent.remoteConnecting());
    });

    on<_WebRtcRemoteConnecting>((event, emit) async {
      emit(const WebRtcState.connecting('remote'));
      add(const WebRtcEvent.remoteConnecting());
    });

    on<_WebRtcSendOffer>((event, emit) {
      sendOffer(event.room);
    });

    on<_WebRtcGotOffer>((event, emit) async {
      final data = jsonDecode(event.data);
      await gotOffer(RTCSessionDescription(data['sdp'], data['type']));
      await sendAnswer(event.room);
    });

    on<_WebRtcGotIce>((event, emit) async {
      print(event.data);
      final data = jsonDecode(event.data);
      gotIce(RTCIceCandidate(
          data['candidate'], data['sdpMid'], data['sdpMLineIndex']));
    });

    on<_WebRtcGotAnswer>((event, emit) async {
      final data = jsonDecode(event.data);
      gotAnswer(RTCSessionDescription(data['sdp'], data['type']));
      emit(const WebRtcState.connected('remote'));
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
      // emit(const WebRtcState.connected('remote'));
    };
  }

  Future sendOffer(String room) async {
    var offer = await _pc!.createOffer();
    _pc!.setLocalDescription(offer);

    socketBloc.add(SocketEvent.onSendOffer(
        'offer', {'room': room, 'offerData': jsonEncode(offer.toMap())}));
  }

  Future gotOffer(RTCSessionDescription offer) async {
    await _pc!.setRemoteDescription(offer);
  }

  Future sendAnswer(String room) async {
    // debugPrint('send answer');
    var answer = await _pc!.createAnswer();
    await _pc!.setLocalDescription(answer);

    socketBloc.add(SocketEvent.onSendAnswer(
        'answer', {'room': room, 'answerData': jsonEncode(answer.toMap())}));
  }

  Future gotAnswer(RTCSessionDescription answer) async {    
    await _pc!.setRemoteDescription(answer);
  }

  Future _sendIce(String room, RTCIceCandidate ice) async {
    print('_sendIce');

    socketBloc.add(SocketEvent.onSendIce(
        'ice', {'room': room, 'iceData': jsonEncode(ice.toMap())}));
  }

  Future gotIce(RTCIceCandidate ice) async {
    await _pc!.addCandidate(ice);
  }

  void dispose() {
    // Clean up the resources used by the peer connection
    localRenderer.dispose();
    remoteRenderer.dispose();
    _localStream?.dispose();
    _pc?.close();
  }
}
