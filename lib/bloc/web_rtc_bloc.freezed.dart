// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_rtc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WebRtcEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String room) initalize,
    required TResult Function() localConnecting,
    required TResult Function() localConnected,
    required TResult Function() remoteConnected,
    required TResult Function() remoteConnecting,
    required TResult Function(String room) sendOffer,
    required TResult Function(String room, dynamic data) gotOffer,
    required TResult Function(dynamic data) gotAnswer,
    required TResult Function(dynamic data) gotIce,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String room)? initalize,
    TResult? Function()? localConnecting,
    TResult? Function()? localConnected,
    TResult? Function()? remoteConnected,
    TResult? Function()? remoteConnecting,
    TResult? Function(String room)? sendOffer,
    TResult? Function(String room, dynamic data)? gotOffer,
    TResult? Function(dynamic data)? gotAnswer,
    TResult? Function(dynamic data)? gotIce,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String room)? initalize,
    TResult Function()? localConnecting,
    TResult Function()? localConnected,
    TResult Function()? remoteConnected,
    TResult Function()? remoteConnecting,
    TResult Function(String room)? sendOffer,
    TResult Function(String room, dynamic data)? gotOffer,
    TResult Function(dynamic data)? gotAnswer,
    TResult Function(dynamic data)? gotIce,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInialize value) initalize,
    required TResult Function(_WebRtcLocalConnecting value) localConnecting,
    required TResult Function(_WebRtcLocalConnected value) localConnected,
    required TResult Function(_WebRtcRemoteConnected value) remoteConnected,
    required TResult Function(_WebRtcRemoteConnecting value) remoteConnecting,
    required TResult Function(_WebRtcSendOffer value) sendOffer,
    required TResult Function(_WebRtcGotOffer value) gotOffer,
    required TResult Function(_WebRtcGotAnswer value) gotAnswer,
    required TResult Function(_WebRtcGotIce value) gotIce,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInialize value)? initalize,
    TResult? Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult? Function(_WebRtcLocalConnected value)? localConnected,
    TResult? Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult? Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult? Function(_WebRtcSendOffer value)? sendOffer,
    TResult? Function(_WebRtcGotOffer value)? gotOffer,
    TResult? Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult? Function(_WebRtcGotIce value)? gotIce,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInialize value)? initalize,
    TResult Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult Function(_WebRtcLocalConnected value)? localConnected,
    TResult Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult Function(_WebRtcSendOffer value)? sendOffer,
    TResult Function(_WebRtcGotOffer value)? gotOffer,
    TResult Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult Function(_WebRtcGotIce value)? gotIce,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebRtcEventCopyWith<$Res> {
  factory $WebRtcEventCopyWith(
          WebRtcEvent value, $Res Function(WebRtcEvent) then) =
      _$WebRtcEventCopyWithImpl<$Res, WebRtcEvent>;
}

/// @nodoc
class _$WebRtcEventCopyWithImpl<$Res, $Val extends WebRtcEvent>
    implements $WebRtcEventCopyWith<$Res> {
  _$WebRtcEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WebRtcInializeCopyWith<$Res> {
  factory _$$_WebRtcInializeCopyWith(
          _$_WebRtcInialize value, $Res Function(_$_WebRtcInialize) then) =
      __$$_WebRtcInializeCopyWithImpl<$Res>;
  @useResult
  $Res call({String room});
}

/// @nodoc
class __$$_WebRtcInializeCopyWithImpl<$Res>
    extends _$WebRtcEventCopyWithImpl<$Res, _$_WebRtcInialize>
    implements _$$_WebRtcInializeCopyWith<$Res> {
  __$$_WebRtcInializeCopyWithImpl(
      _$_WebRtcInialize _value, $Res Function(_$_WebRtcInialize) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$_WebRtcInialize(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WebRtcInialize implements _WebRtcInialize {
  const _$_WebRtcInialize(this.room);

  @override
  final String room;

  @override
  String toString() {
    return 'WebRtcEvent.initalize(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebRtcInialize &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebRtcInializeCopyWith<_$_WebRtcInialize> get copyWith =>
      __$$_WebRtcInializeCopyWithImpl<_$_WebRtcInialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String room) initalize,
    required TResult Function() localConnecting,
    required TResult Function() localConnected,
    required TResult Function() remoteConnected,
    required TResult Function() remoteConnecting,
    required TResult Function(String room) sendOffer,
    required TResult Function(String room, dynamic data) gotOffer,
    required TResult Function(dynamic data) gotAnswer,
    required TResult Function(dynamic data) gotIce,
  }) {
    return initalize(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String room)? initalize,
    TResult? Function()? localConnecting,
    TResult? Function()? localConnected,
    TResult? Function()? remoteConnected,
    TResult? Function()? remoteConnecting,
    TResult? Function(String room)? sendOffer,
    TResult? Function(String room, dynamic data)? gotOffer,
    TResult? Function(dynamic data)? gotAnswer,
    TResult? Function(dynamic data)? gotIce,
  }) {
    return initalize?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String room)? initalize,
    TResult Function()? localConnecting,
    TResult Function()? localConnected,
    TResult Function()? remoteConnected,
    TResult Function()? remoteConnecting,
    TResult Function(String room)? sendOffer,
    TResult Function(String room, dynamic data)? gotOffer,
    TResult Function(dynamic data)? gotAnswer,
    TResult Function(dynamic data)? gotIce,
    required TResult orElse(),
  }) {
    if (initalize != null) {
      return initalize(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInialize value) initalize,
    required TResult Function(_WebRtcLocalConnecting value) localConnecting,
    required TResult Function(_WebRtcLocalConnected value) localConnected,
    required TResult Function(_WebRtcRemoteConnected value) remoteConnected,
    required TResult Function(_WebRtcRemoteConnecting value) remoteConnecting,
    required TResult Function(_WebRtcSendOffer value) sendOffer,
    required TResult Function(_WebRtcGotOffer value) gotOffer,
    required TResult Function(_WebRtcGotAnswer value) gotAnswer,
    required TResult Function(_WebRtcGotIce value) gotIce,
  }) {
    return initalize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInialize value)? initalize,
    TResult? Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult? Function(_WebRtcLocalConnected value)? localConnected,
    TResult? Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult? Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult? Function(_WebRtcSendOffer value)? sendOffer,
    TResult? Function(_WebRtcGotOffer value)? gotOffer,
    TResult? Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult? Function(_WebRtcGotIce value)? gotIce,
  }) {
    return initalize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInialize value)? initalize,
    TResult Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult Function(_WebRtcLocalConnected value)? localConnected,
    TResult Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult Function(_WebRtcSendOffer value)? sendOffer,
    TResult Function(_WebRtcGotOffer value)? gotOffer,
    TResult Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult Function(_WebRtcGotIce value)? gotIce,
    required TResult orElse(),
  }) {
    if (initalize != null) {
      return initalize(this);
    }
    return orElse();
  }
}

abstract class _WebRtcInialize implements WebRtcEvent {
  const factory _WebRtcInialize(final String room) = _$_WebRtcInialize;

  String get room;
  @JsonKey(ignore: true)
  _$$_WebRtcInializeCopyWith<_$_WebRtcInialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WebRtcLocalConnectingCopyWith<$Res> {
  factory _$$_WebRtcLocalConnectingCopyWith(_$_WebRtcLocalConnecting value,
          $Res Function(_$_WebRtcLocalConnecting) then) =
      __$$_WebRtcLocalConnectingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WebRtcLocalConnectingCopyWithImpl<$Res>
    extends _$WebRtcEventCopyWithImpl<$Res, _$_WebRtcLocalConnecting>
    implements _$$_WebRtcLocalConnectingCopyWith<$Res> {
  __$$_WebRtcLocalConnectingCopyWithImpl(_$_WebRtcLocalConnecting _value,
      $Res Function(_$_WebRtcLocalConnecting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WebRtcLocalConnecting implements _WebRtcLocalConnecting {
  const _$_WebRtcLocalConnecting();

  @override
  String toString() {
    return 'WebRtcEvent.localConnecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WebRtcLocalConnecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String room) initalize,
    required TResult Function() localConnecting,
    required TResult Function() localConnected,
    required TResult Function() remoteConnected,
    required TResult Function() remoteConnecting,
    required TResult Function(String room) sendOffer,
    required TResult Function(String room, dynamic data) gotOffer,
    required TResult Function(dynamic data) gotAnswer,
    required TResult Function(dynamic data) gotIce,
  }) {
    return localConnecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String room)? initalize,
    TResult? Function()? localConnecting,
    TResult? Function()? localConnected,
    TResult? Function()? remoteConnected,
    TResult? Function()? remoteConnecting,
    TResult? Function(String room)? sendOffer,
    TResult? Function(String room, dynamic data)? gotOffer,
    TResult? Function(dynamic data)? gotAnswer,
    TResult? Function(dynamic data)? gotIce,
  }) {
    return localConnecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String room)? initalize,
    TResult Function()? localConnecting,
    TResult Function()? localConnected,
    TResult Function()? remoteConnected,
    TResult Function()? remoteConnecting,
    TResult Function(String room)? sendOffer,
    TResult Function(String room, dynamic data)? gotOffer,
    TResult Function(dynamic data)? gotAnswer,
    TResult Function(dynamic data)? gotIce,
    required TResult orElse(),
  }) {
    if (localConnecting != null) {
      return localConnecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInialize value) initalize,
    required TResult Function(_WebRtcLocalConnecting value) localConnecting,
    required TResult Function(_WebRtcLocalConnected value) localConnected,
    required TResult Function(_WebRtcRemoteConnected value) remoteConnected,
    required TResult Function(_WebRtcRemoteConnecting value) remoteConnecting,
    required TResult Function(_WebRtcSendOffer value) sendOffer,
    required TResult Function(_WebRtcGotOffer value) gotOffer,
    required TResult Function(_WebRtcGotAnswer value) gotAnswer,
    required TResult Function(_WebRtcGotIce value) gotIce,
  }) {
    return localConnecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInialize value)? initalize,
    TResult? Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult? Function(_WebRtcLocalConnected value)? localConnected,
    TResult? Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult? Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult? Function(_WebRtcSendOffer value)? sendOffer,
    TResult? Function(_WebRtcGotOffer value)? gotOffer,
    TResult? Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult? Function(_WebRtcGotIce value)? gotIce,
  }) {
    return localConnecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInialize value)? initalize,
    TResult Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult Function(_WebRtcLocalConnected value)? localConnected,
    TResult Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult Function(_WebRtcSendOffer value)? sendOffer,
    TResult Function(_WebRtcGotOffer value)? gotOffer,
    TResult Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult Function(_WebRtcGotIce value)? gotIce,
    required TResult orElse(),
  }) {
    if (localConnecting != null) {
      return localConnecting(this);
    }
    return orElse();
  }
}

abstract class _WebRtcLocalConnecting implements WebRtcEvent {
  const factory _WebRtcLocalConnecting() = _$_WebRtcLocalConnecting;
}

/// @nodoc
abstract class _$$_WebRtcLocalConnectedCopyWith<$Res> {
  factory _$$_WebRtcLocalConnectedCopyWith(_$_WebRtcLocalConnected value,
          $Res Function(_$_WebRtcLocalConnected) then) =
      __$$_WebRtcLocalConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WebRtcLocalConnectedCopyWithImpl<$Res>
    extends _$WebRtcEventCopyWithImpl<$Res, _$_WebRtcLocalConnected>
    implements _$$_WebRtcLocalConnectedCopyWith<$Res> {
  __$$_WebRtcLocalConnectedCopyWithImpl(_$_WebRtcLocalConnected _value,
      $Res Function(_$_WebRtcLocalConnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WebRtcLocalConnected implements _WebRtcLocalConnected {
  const _$_WebRtcLocalConnected();

  @override
  String toString() {
    return 'WebRtcEvent.localConnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WebRtcLocalConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String room) initalize,
    required TResult Function() localConnecting,
    required TResult Function() localConnected,
    required TResult Function() remoteConnected,
    required TResult Function() remoteConnecting,
    required TResult Function(String room) sendOffer,
    required TResult Function(String room, dynamic data) gotOffer,
    required TResult Function(dynamic data) gotAnswer,
    required TResult Function(dynamic data) gotIce,
  }) {
    return localConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String room)? initalize,
    TResult? Function()? localConnecting,
    TResult? Function()? localConnected,
    TResult? Function()? remoteConnected,
    TResult? Function()? remoteConnecting,
    TResult? Function(String room)? sendOffer,
    TResult? Function(String room, dynamic data)? gotOffer,
    TResult? Function(dynamic data)? gotAnswer,
    TResult? Function(dynamic data)? gotIce,
  }) {
    return localConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String room)? initalize,
    TResult Function()? localConnecting,
    TResult Function()? localConnected,
    TResult Function()? remoteConnected,
    TResult Function()? remoteConnecting,
    TResult Function(String room)? sendOffer,
    TResult Function(String room, dynamic data)? gotOffer,
    TResult Function(dynamic data)? gotAnswer,
    TResult Function(dynamic data)? gotIce,
    required TResult orElse(),
  }) {
    if (localConnected != null) {
      return localConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInialize value) initalize,
    required TResult Function(_WebRtcLocalConnecting value) localConnecting,
    required TResult Function(_WebRtcLocalConnected value) localConnected,
    required TResult Function(_WebRtcRemoteConnected value) remoteConnected,
    required TResult Function(_WebRtcRemoteConnecting value) remoteConnecting,
    required TResult Function(_WebRtcSendOffer value) sendOffer,
    required TResult Function(_WebRtcGotOffer value) gotOffer,
    required TResult Function(_WebRtcGotAnswer value) gotAnswer,
    required TResult Function(_WebRtcGotIce value) gotIce,
  }) {
    return localConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInialize value)? initalize,
    TResult? Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult? Function(_WebRtcLocalConnected value)? localConnected,
    TResult? Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult? Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult? Function(_WebRtcSendOffer value)? sendOffer,
    TResult? Function(_WebRtcGotOffer value)? gotOffer,
    TResult? Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult? Function(_WebRtcGotIce value)? gotIce,
  }) {
    return localConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInialize value)? initalize,
    TResult Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult Function(_WebRtcLocalConnected value)? localConnected,
    TResult Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult Function(_WebRtcSendOffer value)? sendOffer,
    TResult Function(_WebRtcGotOffer value)? gotOffer,
    TResult Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult Function(_WebRtcGotIce value)? gotIce,
    required TResult orElse(),
  }) {
    if (localConnected != null) {
      return localConnected(this);
    }
    return orElse();
  }
}

abstract class _WebRtcLocalConnected implements WebRtcEvent {
  const factory _WebRtcLocalConnected() = _$_WebRtcLocalConnected;
}

/// @nodoc
abstract class _$$_WebRtcRemoteConnectedCopyWith<$Res> {
  factory _$$_WebRtcRemoteConnectedCopyWith(_$_WebRtcRemoteConnected value,
          $Res Function(_$_WebRtcRemoteConnected) then) =
      __$$_WebRtcRemoteConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WebRtcRemoteConnectedCopyWithImpl<$Res>
    extends _$WebRtcEventCopyWithImpl<$Res, _$_WebRtcRemoteConnected>
    implements _$$_WebRtcRemoteConnectedCopyWith<$Res> {
  __$$_WebRtcRemoteConnectedCopyWithImpl(_$_WebRtcRemoteConnected _value,
      $Res Function(_$_WebRtcRemoteConnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WebRtcRemoteConnected implements _WebRtcRemoteConnected {
  const _$_WebRtcRemoteConnected();

  @override
  String toString() {
    return 'WebRtcEvent.remoteConnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WebRtcRemoteConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String room) initalize,
    required TResult Function() localConnecting,
    required TResult Function() localConnected,
    required TResult Function() remoteConnected,
    required TResult Function() remoteConnecting,
    required TResult Function(String room) sendOffer,
    required TResult Function(String room, dynamic data) gotOffer,
    required TResult Function(dynamic data) gotAnswer,
    required TResult Function(dynamic data) gotIce,
  }) {
    return remoteConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String room)? initalize,
    TResult? Function()? localConnecting,
    TResult? Function()? localConnected,
    TResult? Function()? remoteConnected,
    TResult? Function()? remoteConnecting,
    TResult? Function(String room)? sendOffer,
    TResult? Function(String room, dynamic data)? gotOffer,
    TResult? Function(dynamic data)? gotAnswer,
    TResult? Function(dynamic data)? gotIce,
  }) {
    return remoteConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String room)? initalize,
    TResult Function()? localConnecting,
    TResult Function()? localConnected,
    TResult Function()? remoteConnected,
    TResult Function()? remoteConnecting,
    TResult Function(String room)? sendOffer,
    TResult Function(String room, dynamic data)? gotOffer,
    TResult Function(dynamic data)? gotAnswer,
    TResult Function(dynamic data)? gotIce,
    required TResult orElse(),
  }) {
    if (remoteConnected != null) {
      return remoteConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInialize value) initalize,
    required TResult Function(_WebRtcLocalConnecting value) localConnecting,
    required TResult Function(_WebRtcLocalConnected value) localConnected,
    required TResult Function(_WebRtcRemoteConnected value) remoteConnected,
    required TResult Function(_WebRtcRemoteConnecting value) remoteConnecting,
    required TResult Function(_WebRtcSendOffer value) sendOffer,
    required TResult Function(_WebRtcGotOffer value) gotOffer,
    required TResult Function(_WebRtcGotAnswer value) gotAnswer,
    required TResult Function(_WebRtcGotIce value) gotIce,
  }) {
    return remoteConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInialize value)? initalize,
    TResult? Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult? Function(_WebRtcLocalConnected value)? localConnected,
    TResult? Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult? Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult? Function(_WebRtcSendOffer value)? sendOffer,
    TResult? Function(_WebRtcGotOffer value)? gotOffer,
    TResult? Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult? Function(_WebRtcGotIce value)? gotIce,
  }) {
    return remoteConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInialize value)? initalize,
    TResult Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult Function(_WebRtcLocalConnected value)? localConnected,
    TResult Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult Function(_WebRtcSendOffer value)? sendOffer,
    TResult Function(_WebRtcGotOffer value)? gotOffer,
    TResult Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult Function(_WebRtcGotIce value)? gotIce,
    required TResult orElse(),
  }) {
    if (remoteConnected != null) {
      return remoteConnected(this);
    }
    return orElse();
  }
}

abstract class _WebRtcRemoteConnected implements WebRtcEvent {
  const factory _WebRtcRemoteConnected() = _$_WebRtcRemoteConnected;
}

/// @nodoc
abstract class _$$_WebRtcRemoteConnectingCopyWith<$Res> {
  factory _$$_WebRtcRemoteConnectingCopyWith(_$_WebRtcRemoteConnecting value,
          $Res Function(_$_WebRtcRemoteConnecting) then) =
      __$$_WebRtcRemoteConnectingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WebRtcRemoteConnectingCopyWithImpl<$Res>
    extends _$WebRtcEventCopyWithImpl<$Res, _$_WebRtcRemoteConnecting>
    implements _$$_WebRtcRemoteConnectingCopyWith<$Res> {
  __$$_WebRtcRemoteConnectingCopyWithImpl(_$_WebRtcRemoteConnecting _value,
      $Res Function(_$_WebRtcRemoteConnecting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WebRtcRemoteConnecting implements _WebRtcRemoteConnecting {
  const _$_WebRtcRemoteConnecting();

  @override
  String toString() {
    return 'WebRtcEvent.remoteConnecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebRtcRemoteConnecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String room) initalize,
    required TResult Function() localConnecting,
    required TResult Function() localConnected,
    required TResult Function() remoteConnected,
    required TResult Function() remoteConnecting,
    required TResult Function(String room) sendOffer,
    required TResult Function(String room, dynamic data) gotOffer,
    required TResult Function(dynamic data) gotAnswer,
    required TResult Function(dynamic data) gotIce,
  }) {
    return remoteConnecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String room)? initalize,
    TResult? Function()? localConnecting,
    TResult? Function()? localConnected,
    TResult? Function()? remoteConnected,
    TResult? Function()? remoteConnecting,
    TResult? Function(String room)? sendOffer,
    TResult? Function(String room, dynamic data)? gotOffer,
    TResult? Function(dynamic data)? gotAnswer,
    TResult? Function(dynamic data)? gotIce,
  }) {
    return remoteConnecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String room)? initalize,
    TResult Function()? localConnecting,
    TResult Function()? localConnected,
    TResult Function()? remoteConnected,
    TResult Function()? remoteConnecting,
    TResult Function(String room)? sendOffer,
    TResult Function(String room, dynamic data)? gotOffer,
    TResult Function(dynamic data)? gotAnswer,
    TResult Function(dynamic data)? gotIce,
    required TResult orElse(),
  }) {
    if (remoteConnecting != null) {
      return remoteConnecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInialize value) initalize,
    required TResult Function(_WebRtcLocalConnecting value) localConnecting,
    required TResult Function(_WebRtcLocalConnected value) localConnected,
    required TResult Function(_WebRtcRemoteConnected value) remoteConnected,
    required TResult Function(_WebRtcRemoteConnecting value) remoteConnecting,
    required TResult Function(_WebRtcSendOffer value) sendOffer,
    required TResult Function(_WebRtcGotOffer value) gotOffer,
    required TResult Function(_WebRtcGotAnswer value) gotAnswer,
    required TResult Function(_WebRtcGotIce value) gotIce,
  }) {
    return remoteConnecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInialize value)? initalize,
    TResult? Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult? Function(_WebRtcLocalConnected value)? localConnected,
    TResult? Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult? Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult? Function(_WebRtcSendOffer value)? sendOffer,
    TResult? Function(_WebRtcGotOffer value)? gotOffer,
    TResult? Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult? Function(_WebRtcGotIce value)? gotIce,
  }) {
    return remoteConnecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInialize value)? initalize,
    TResult Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult Function(_WebRtcLocalConnected value)? localConnected,
    TResult Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult Function(_WebRtcSendOffer value)? sendOffer,
    TResult Function(_WebRtcGotOffer value)? gotOffer,
    TResult Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult Function(_WebRtcGotIce value)? gotIce,
    required TResult orElse(),
  }) {
    if (remoteConnecting != null) {
      return remoteConnecting(this);
    }
    return orElse();
  }
}

abstract class _WebRtcRemoteConnecting implements WebRtcEvent {
  const factory _WebRtcRemoteConnecting() = _$_WebRtcRemoteConnecting;
}

/// @nodoc
abstract class _$$_WebRtcSendOfferCopyWith<$Res> {
  factory _$$_WebRtcSendOfferCopyWith(
          _$_WebRtcSendOffer value, $Res Function(_$_WebRtcSendOffer) then) =
      __$$_WebRtcSendOfferCopyWithImpl<$Res>;
  @useResult
  $Res call({String room});
}

/// @nodoc
class __$$_WebRtcSendOfferCopyWithImpl<$Res>
    extends _$WebRtcEventCopyWithImpl<$Res, _$_WebRtcSendOffer>
    implements _$$_WebRtcSendOfferCopyWith<$Res> {
  __$$_WebRtcSendOfferCopyWithImpl(
      _$_WebRtcSendOffer _value, $Res Function(_$_WebRtcSendOffer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$_WebRtcSendOffer(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WebRtcSendOffer implements _WebRtcSendOffer {
  const _$_WebRtcSendOffer(this.room);

  @override
  final String room;

  @override
  String toString() {
    return 'WebRtcEvent.sendOffer(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebRtcSendOffer &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebRtcSendOfferCopyWith<_$_WebRtcSendOffer> get copyWith =>
      __$$_WebRtcSendOfferCopyWithImpl<_$_WebRtcSendOffer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String room) initalize,
    required TResult Function() localConnecting,
    required TResult Function() localConnected,
    required TResult Function() remoteConnected,
    required TResult Function() remoteConnecting,
    required TResult Function(String room) sendOffer,
    required TResult Function(String room, dynamic data) gotOffer,
    required TResult Function(dynamic data) gotAnswer,
    required TResult Function(dynamic data) gotIce,
  }) {
    return sendOffer(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String room)? initalize,
    TResult? Function()? localConnecting,
    TResult? Function()? localConnected,
    TResult? Function()? remoteConnected,
    TResult? Function()? remoteConnecting,
    TResult? Function(String room)? sendOffer,
    TResult? Function(String room, dynamic data)? gotOffer,
    TResult? Function(dynamic data)? gotAnswer,
    TResult? Function(dynamic data)? gotIce,
  }) {
    return sendOffer?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String room)? initalize,
    TResult Function()? localConnecting,
    TResult Function()? localConnected,
    TResult Function()? remoteConnected,
    TResult Function()? remoteConnecting,
    TResult Function(String room)? sendOffer,
    TResult Function(String room, dynamic data)? gotOffer,
    TResult Function(dynamic data)? gotAnswer,
    TResult Function(dynamic data)? gotIce,
    required TResult orElse(),
  }) {
    if (sendOffer != null) {
      return sendOffer(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInialize value) initalize,
    required TResult Function(_WebRtcLocalConnecting value) localConnecting,
    required TResult Function(_WebRtcLocalConnected value) localConnected,
    required TResult Function(_WebRtcRemoteConnected value) remoteConnected,
    required TResult Function(_WebRtcRemoteConnecting value) remoteConnecting,
    required TResult Function(_WebRtcSendOffer value) sendOffer,
    required TResult Function(_WebRtcGotOffer value) gotOffer,
    required TResult Function(_WebRtcGotAnswer value) gotAnswer,
    required TResult Function(_WebRtcGotIce value) gotIce,
  }) {
    return sendOffer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInialize value)? initalize,
    TResult? Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult? Function(_WebRtcLocalConnected value)? localConnected,
    TResult? Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult? Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult? Function(_WebRtcSendOffer value)? sendOffer,
    TResult? Function(_WebRtcGotOffer value)? gotOffer,
    TResult? Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult? Function(_WebRtcGotIce value)? gotIce,
  }) {
    return sendOffer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInialize value)? initalize,
    TResult Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult Function(_WebRtcLocalConnected value)? localConnected,
    TResult Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult Function(_WebRtcSendOffer value)? sendOffer,
    TResult Function(_WebRtcGotOffer value)? gotOffer,
    TResult Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult Function(_WebRtcGotIce value)? gotIce,
    required TResult orElse(),
  }) {
    if (sendOffer != null) {
      return sendOffer(this);
    }
    return orElse();
  }
}

abstract class _WebRtcSendOffer implements WebRtcEvent {
  const factory _WebRtcSendOffer(final String room) = _$_WebRtcSendOffer;

  String get room;
  @JsonKey(ignore: true)
  _$$_WebRtcSendOfferCopyWith<_$_WebRtcSendOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WebRtcGotOfferCopyWith<$Res> {
  factory _$$_WebRtcGotOfferCopyWith(
          _$_WebRtcGotOffer value, $Res Function(_$_WebRtcGotOffer) then) =
      __$$_WebRtcGotOfferCopyWithImpl<$Res>;
  @useResult
  $Res call({String room, dynamic data});
}

/// @nodoc
class __$$_WebRtcGotOfferCopyWithImpl<$Res>
    extends _$WebRtcEventCopyWithImpl<$Res, _$_WebRtcGotOffer>
    implements _$$_WebRtcGotOfferCopyWith<$Res> {
  __$$_WebRtcGotOfferCopyWithImpl(
      _$_WebRtcGotOffer _value, $Res Function(_$_WebRtcGotOffer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? data = freezed,
  }) {
    return _then(_$_WebRtcGotOffer(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == data ? _value.data! : data,
    ));
  }
}

/// @nodoc

class _$_WebRtcGotOffer implements _WebRtcGotOffer {
  const _$_WebRtcGotOffer(this.room, this.data);

  @override
  final String room;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'WebRtcEvent.gotOffer(room: $room, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebRtcGotOffer &&
            (identical(other.room, room) || other.room == room) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, room, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebRtcGotOfferCopyWith<_$_WebRtcGotOffer> get copyWith =>
      __$$_WebRtcGotOfferCopyWithImpl<_$_WebRtcGotOffer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String room) initalize,
    required TResult Function() localConnecting,
    required TResult Function() localConnected,
    required TResult Function() remoteConnected,
    required TResult Function() remoteConnecting,
    required TResult Function(String room) sendOffer,
    required TResult Function(String room, dynamic data) gotOffer,
    required TResult Function(dynamic data) gotAnswer,
    required TResult Function(dynamic data) gotIce,
  }) {
    return gotOffer(room, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String room)? initalize,
    TResult? Function()? localConnecting,
    TResult? Function()? localConnected,
    TResult? Function()? remoteConnected,
    TResult? Function()? remoteConnecting,
    TResult? Function(String room)? sendOffer,
    TResult? Function(String room, dynamic data)? gotOffer,
    TResult? Function(dynamic data)? gotAnswer,
    TResult? Function(dynamic data)? gotIce,
  }) {
    return gotOffer?.call(room, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String room)? initalize,
    TResult Function()? localConnecting,
    TResult Function()? localConnected,
    TResult Function()? remoteConnected,
    TResult Function()? remoteConnecting,
    TResult Function(String room)? sendOffer,
    TResult Function(String room, dynamic data)? gotOffer,
    TResult Function(dynamic data)? gotAnswer,
    TResult Function(dynamic data)? gotIce,
    required TResult orElse(),
  }) {
    if (gotOffer != null) {
      return gotOffer(room, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInialize value) initalize,
    required TResult Function(_WebRtcLocalConnecting value) localConnecting,
    required TResult Function(_WebRtcLocalConnected value) localConnected,
    required TResult Function(_WebRtcRemoteConnected value) remoteConnected,
    required TResult Function(_WebRtcRemoteConnecting value) remoteConnecting,
    required TResult Function(_WebRtcSendOffer value) sendOffer,
    required TResult Function(_WebRtcGotOffer value) gotOffer,
    required TResult Function(_WebRtcGotAnswer value) gotAnswer,
    required TResult Function(_WebRtcGotIce value) gotIce,
  }) {
    return gotOffer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInialize value)? initalize,
    TResult? Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult? Function(_WebRtcLocalConnected value)? localConnected,
    TResult? Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult? Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult? Function(_WebRtcSendOffer value)? sendOffer,
    TResult? Function(_WebRtcGotOffer value)? gotOffer,
    TResult? Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult? Function(_WebRtcGotIce value)? gotIce,
  }) {
    return gotOffer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInialize value)? initalize,
    TResult Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult Function(_WebRtcLocalConnected value)? localConnected,
    TResult Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult Function(_WebRtcSendOffer value)? sendOffer,
    TResult Function(_WebRtcGotOffer value)? gotOffer,
    TResult Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult Function(_WebRtcGotIce value)? gotIce,
    required TResult orElse(),
  }) {
    if (gotOffer != null) {
      return gotOffer(this);
    }
    return orElse();
  }
}

abstract class _WebRtcGotOffer implements WebRtcEvent {
  const factory _WebRtcGotOffer(final String room, final dynamic data) =
      _$_WebRtcGotOffer;

  String get room;
  dynamic get data;
  @JsonKey(ignore: true)
  _$$_WebRtcGotOfferCopyWith<_$_WebRtcGotOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WebRtcGotAnswerCopyWith<$Res> {
  factory _$$_WebRtcGotAnswerCopyWith(
          _$_WebRtcGotAnswer value, $Res Function(_$_WebRtcGotAnswer) then) =
      __$$_WebRtcGotAnswerCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$_WebRtcGotAnswerCopyWithImpl<$Res>
    extends _$WebRtcEventCopyWithImpl<$Res, _$_WebRtcGotAnswer>
    implements _$$_WebRtcGotAnswerCopyWith<$Res> {
  __$$_WebRtcGotAnswerCopyWithImpl(
      _$_WebRtcGotAnswer _value, $Res Function(_$_WebRtcGotAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_WebRtcGotAnswer(
      freezed == data ? _value.data! : data,
    ));
  }
}

/// @nodoc

class _$_WebRtcGotAnswer implements _WebRtcGotAnswer {
  const _$_WebRtcGotAnswer(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'WebRtcEvent.gotAnswer(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebRtcGotAnswer &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebRtcGotAnswerCopyWith<_$_WebRtcGotAnswer> get copyWith =>
      __$$_WebRtcGotAnswerCopyWithImpl<_$_WebRtcGotAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String room) initalize,
    required TResult Function() localConnecting,
    required TResult Function() localConnected,
    required TResult Function() remoteConnected,
    required TResult Function() remoteConnecting,
    required TResult Function(String room) sendOffer,
    required TResult Function(String room, dynamic data) gotOffer,
    required TResult Function(dynamic data) gotAnswer,
    required TResult Function(dynamic data) gotIce,
  }) {
    return gotAnswer(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String room)? initalize,
    TResult? Function()? localConnecting,
    TResult? Function()? localConnected,
    TResult? Function()? remoteConnected,
    TResult? Function()? remoteConnecting,
    TResult? Function(String room)? sendOffer,
    TResult? Function(String room, dynamic data)? gotOffer,
    TResult? Function(dynamic data)? gotAnswer,
    TResult? Function(dynamic data)? gotIce,
  }) {
    return gotAnswer?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String room)? initalize,
    TResult Function()? localConnecting,
    TResult Function()? localConnected,
    TResult Function()? remoteConnected,
    TResult Function()? remoteConnecting,
    TResult Function(String room)? sendOffer,
    TResult Function(String room, dynamic data)? gotOffer,
    TResult Function(dynamic data)? gotAnswer,
    TResult Function(dynamic data)? gotIce,
    required TResult orElse(),
  }) {
    if (gotAnswer != null) {
      return gotAnswer(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInialize value) initalize,
    required TResult Function(_WebRtcLocalConnecting value) localConnecting,
    required TResult Function(_WebRtcLocalConnected value) localConnected,
    required TResult Function(_WebRtcRemoteConnected value) remoteConnected,
    required TResult Function(_WebRtcRemoteConnecting value) remoteConnecting,
    required TResult Function(_WebRtcSendOffer value) sendOffer,
    required TResult Function(_WebRtcGotOffer value) gotOffer,
    required TResult Function(_WebRtcGotAnswer value) gotAnswer,
    required TResult Function(_WebRtcGotIce value) gotIce,
  }) {
    return gotAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInialize value)? initalize,
    TResult? Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult? Function(_WebRtcLocalConnected value)? localConnected,
    TResult? Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult? Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult? Function(_WebRtcSendOffer value)? sendOffer,
    TResult? Function(_WebRtcGotOffer value)? gotOffer,
    TResult? Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult? Function(_WebRtcGotIce value)? gotIce,
  }) {
    return gotAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInialize value)? initalize,
    TResult Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult Function(_WebRtcLocalConnected value)? localConnected,
    TResult Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult Function(_WebRtcSendOffer value)? sendOffer,
    TResult Function(_WebRtcGotOffer value)? gotOffer,
    TResult Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult Function(_WebRtcGotIce value)? gotIce,
    required TResult orElse(),
  }) {
    if (gotAnswer != null) {
      return gotAnswer(this);
    }
    return orElse();
  }
}

abstract class _WebRtcGotAnswer implements WebRtcEvent {
  const factory _WebRtcGotAnswer(final dynamic data) = _$_WebRtcGotAnswer;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$_WebRtcGotAnswerCopyWith<_$_WebRtcGotAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WebRtcGotIceCopyWith<$Res> {
  factory _$$_WebRtcGotIceCopyWith(
          _$_WebRtcGotIce value, $Res Function(_$_WebRtcGotIce) then) =
      __$$_WebRtcGotIceCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$_WebRtcGotIceCopyWithImpl<$Res>
    extends _$WebRtcEventCopyWithImpl<$Res, _$_WebRtcGotIce>
    implements _$$_WebRtcGotIceCopyWith<$Res> {
  __$$_WebRtcGotIceCopyWithImpl(
      _$_WebRtcGotIce _value, $Res Function(_$_WebRtcGotIce) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_WebRtcGotIce(
      freezed == data ? _value.data! : data,
    ));
  }
}

/// @nodoc

class _$_WebRtcGotIce implements _WebRtcGotIce {
  const _$_WebRtcGotIce(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'WebRtcEvent.gotIce(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebRtcGotIce &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebRtcGotIceCopyWith<_$_WebRtcGotIce> get copyWith =>
      __$$_WebRtcGotIceCopyWithImpl<_$_WebRtcGotIce>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String room) initalize,
    required TResult Function() localConnecting,
    required TResult Function() localConnected,
    required TResult Function() remoteConnected,
    required TResult Function() remoteConnecting,
    required TResult Function(String room) sendOffer,
    required TResult Function(String room, dynamic data) gotOffer,
    required TResult Function(dynamic data) gotAnswer,
    required TResult Function(dynamic data) gotIce,
  }) {
    return gotIce(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String room)? initalize,
    TResult? Function()? localConnecting,
    TResult? Function()? localConnected,
    TResult? Function()? remoteConnected,
    TResult? Function()? remoteConnecting,
    TResult? Function(String room)? sendOffer,
    TResult? Function(String room, dynamic data)? gotOffer,
    TResult? Function(dynamic data)? gotAnswer,
    TResult? Function(dynamic data)? gotIce,
  }) {
    return gotIce?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String room)? initalize,
    TResult Function()? localConnecting,
    TResult Function()? localConnected,
    TResult Function()? remoteConnected,
    TResult Function()? remoteConnecting,
    TResult Function(String room)? sendOffer,
    TResult Function(String room, dynamic data)? gotOffer,
    TResult Function(dynamic data)? gotAnswer,
    TResult Function(dynamic data)? gotIce,
    required TResult orElse(),
  }) {
    if (gotIce != null) {
      return gotIce(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInialize value) initalize,
    required TResult Function(_WebRtcLocalConnecting value) localConnecting,
    required TResult Function(_WebRtcLocalConnected value) localConnected,
    required TResult Function(_WebRtcRemoteConnected value) remoteConnected,
    required TResult Function(_WebRtcRemoteConnecting value) remoteConnecting,
    required TResult Function(_WebRtcSendOffer value) sendOffer,
    required TResult Function(_WebRtcGotOffer value) gotOffer,
    required TResult Function(_WebRtcGotAnswer value) gotAnswer,
    required TResult Function(_WebRtcGotIce value) gotIce,
  }) {
    return gotIce(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInialize value)? initalize,
    TResult? Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult? Function(_WebRtcLocalConnected value)? localConnected,
    TResult? Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult? Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult? Function(_WebRtcSendOffer value)? sendOffer,
    TResult? Function(_WebRtcGotOffer value)? gotOffer,
    TResult? Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult? Function(_WebRtcGotIce value)? gotIce,
  }) {
    return gotIce?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInialize value)? initalize,
    TResult Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult Function(_WebRtcLocalConnected value)? localConnected,
    TResult Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult Function(_WebRtcRemoteConnecting value)? remoteConnecting,
    TResult Function(_WebRtcSendOffer value)? sendOffer,
    TResult Function(_WebRtcGotOffer value)? gotOffer,
    TResult Function(_WebRtcGotAnswer value)? gotAnswer,
    TResult Function(_WebRtcGotIce value)? gotIce,
    required TResult orElse(),
  }) {
    if (gotIce != null) {
      return gotIce(this);
    }
    return orElse();
  }
}

abstract class _WebRtcGotIce implements WebRtcEvent {
  const factory _WebRtcGotIce(final dynamic data) = _$_WebRtcGotIce;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$_WebRtcGotIceCopyWith<_$_WebRtcGotIce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WebRtcState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String status) connected,
    required TResult Function(String status) connecting,
    required TResult Function() Error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String status)? connected,
    TResult? Function(String status)? connecting,
    TResult? Function()? Error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String status)? connected,
    TResult Function(String status)? connecting,
    TResult Function()? Error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInitial value) initial,
    required TResult Function(_WebRtcConnected value) connected,
    required TResult Function(_WebRtcConnecting value) connecting,
    required TResult Function(_WebRtcError value) Error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInitial value)? initial,
    TResult? Function(_WebRtcConnected value)? connected,
    TResult? Function(_WebRtcConnecting value)? connecting,
    TResult? Function(_WebRtcError value)? Error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInitial value)? initial,
    TResult Function(_WebRtcConnected value)? connected,
    TResult Function(_WebRtcConnecting value)? connecting,
    TResult Function(_WebRtcError value)? Error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebRtcStateCopyWith<$Res> {
  factory $WebRtcStateCopyWith(
          WebRtcState value, $Res Function(WebRtcState) then) =
      _$WebRtcStateCopyWithImpl<$Res, WebRtcState>;
}

/// @nodoc
class _$WebRtcStateCopyWithImpl<$Res, $Val extends WebRtcState>
    implements $WebRtcStateCopyWith<$Res> {
  _$WebRtcStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WebRtcInitialCopyWith<$Res> {
  factory _$$_WebRtcInitialCopyWith(
          _$_WebRtcInitial value, $Res Function(_$_WebRtcInitial) then) =
      __$$_WebRtcInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WebRtcInitialCopyWithImpl<$Res>
    extends _$WebRtcStateCopyWithImpl<$Res, _$_WebRtcInitial>
    implements _$$_WebRtcInitialCopyWith<$Res> {
  __$$_WebRtcInitialCopyWithImpl(
      _$_WebRtcInitial _value, $Res Function(_$_WebRtcInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WebRtcInitial implements _WebRtcInitial {
  const _$_WebRtcInitial();

  @override
  String toString() {
    return 'WebRtcState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WebRtcInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String status) connected,
    required TResult Function(String status) connecting,
    required TResult Function() Error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String status)? connected,
    TResult? Function(String status)? connecting,
    TResult? Function()? Error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String status)? connected,
    TResult Function(String status)? connecting,
    TResult Function()? Error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInitial value) initial,
    required TResult Function(_WebRtcConnected value) connected,
    required TResult Function(_WebRtcConnecting value) connecting,
    required TResult Function(_WebRtcError value) Error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInitial value)? initial,
    TResult? Function(_WebRtcConnected value)? connected,
    TResult? Function(_WebRtcConnecting value)? connecting,
    TResult? Function(_WebRtcError value)? Error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInitial value)? initial,
    TResult Function(_WebRtcConnected value)? connected,
    TResult Function(_WebRtcConnecting value)? connecting,
    TResult Function(_WebRtcError value)? Error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WebRtcInitial implements WebRtcState {
  const factory _WebRtcInitial() = _$_WebRtcInitial;
}

/// @nodoc
abstract class _$$_WebRtcConnectedCopyWith<$Res> {
  factory _$$_WebRtcConnectedCopyWith(
          _$_WebRtcConnected value, $Res Function(_$_WebRtcConnected) then) =
      __$$_WebRtcConnectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$_WebRtcConnectedCopyWithImpl<$Res>
    extends _$WebRtcStateCopyWithImpl<$Res, _$_WebRtcConnected>
    implements _$$_WebRtcConnectedCopyWith<$Res> {
  __$$_WebRtcConnectedCopyWithImpl(
      _$_WebRtcConnected _value, $Res Function(_$_WebRtcConnected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_WebRtcConnected(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WebRtcConnected implements _WebRtcConnected {
  const _$_WebRtcConnected(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'WebRtcState.connected(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebRtcConnected &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebRtcConnectedCopyWith<_$_WebRtcConnected> get copyWith =>
      __$$_WebRtcConnectedCopyWithImpl<_$_WebRtcConnected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String status) connected,
    required TResult Function(String status) connecting,
    required TResult Function() Error,
  }) {
    return connected(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String status)? connected,
    TResult? Function(String status)? connecting,
    TResult? Function()? Error,
  }) {
    return connected?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String status)? connected,
    TResult Function(String status)? connecting,
    TResult Function()? Error,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInitial value) initial,
    required TResult Function(_WebRtcConnected value) connected,
    required TResult Function(_WebRtcConnecting value) connecting,
    required TResult Function(_WebRtcError value) Error,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInitial value)? initial,
    TResult? Function(_WebRtcConnected value)? connected,
    TResult? Function(_WebRtcConnecting value)? connecting,
    TResult? Function(_WebRtcError value)? Error,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInitial value)? initial,
    TResult Function(_WebRtcConnected value)? connected,
    TResult Function(_WebRtcConnecting value)? connecting,
    TResult Function(_WebRtcError value)? Error,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _WebRtcConnected implements WebRtcState {
  const factory _WebRtcConnected(final String status) = _$_WebRtcConnected;

  String get status;
  @JsonKey(ignore: true)
  _$$_WebRtcConnectedCopyWith<_$_WebRtcConnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WebRtcConnectingCopyWith<$Res> {
  factory _$$_WebRtcConnectingCopyWith(
          _$_WebRtcConnecting value, $Res Function(_$_WebRtcConnecting) then) =
      __$$_WebRtcConnectingCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$_WebRtcConnectingCopyWithImpl<$Res>
    extends _$WebRtcStateCopyWithImpl<$Res, _$_WebRtcConnecting>
    implements _$$_WebRtcConnectingCopyWith<$Res> {
  __$$_WebRtcConnectingCopyWithImpl(
      _$_WebRtcConnecting _value, $Res Function(_$_WebRtcConnecting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_WebRtcConnecting(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WebRtcConnecting implements _WebRtcConnecting {
  const _$_WebRtcConnecting(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'WebRtcState.connecting(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebRtcConnecting &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebRtcConnectingCopyWith<_$_WebRtcConnecting> get copyWith =>
      __$$_WebRtcConnectingCopyWithImpl<_$_WebRtcConnecting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String status) connected,
    required TResult Function(String status) connecting,
    required TResult Function() Error,
  }) {
    return connecting(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String status)? connected,
    TResult? Function(String status)? connecting,
    TResult? Function()? Error,
  }) {
    return connecting?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String status)? connected,
    TResult Function(String status)? connecting,
    TResult Function()? Error,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInitial value) initial,
    required TResult Function(_WebRtcConnected value) connected,
    required TResult Function(_WebRtcConnecting value) connecting,
    required TResult Function(_WebRtcError value) Error,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInitial value)? initial,
    TResult? Function(_WebRtcConnected value)? connected,
    TResult? Function(_WebRtcConnecting value)? connecting,
    TResult? Function(_WebRtcError value)? Error,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInitial value)? initial,
    TResult Function(_WebRtcConnected value)? connected,
    TResult Function(_WebRtcConnecting value)? connecting,
    TResult Function(_WebRtcError value)? Error,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class _WebRtcConnecting implements WebRtcState {
  const factory _WebRtcConnecting(final String status) = _$_WebRtcConnecting;

  String get status;
  @JsonKey(ignore: true)
  _$$_WebRtcConnectingCopyWith<_$_WebRtcConnecting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WebRtcErrorCopyWith<$Res> {
  factory _$$_WebRtcErrorCopyWith(
          _$_WebRtcError value, $Res Function(_$_WebRtcError) then) =
      __$$_WebRtcErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WebRtcErrorCopyWithImpl<$Res>
    extends _$WebRtcStateCopyWithImpl<$Res, _$_WebRtcError>
    implements _$$_WebRtcErrorCopyWith<$Res> {
  __$$_WebRtcErrorCopyWithImpl(
      _$_WebRtcError _value, $Res Function(_$_WebRtcError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WebRtcError implements _WebRtcError {
  const _$_WebRtcError();

  @override
  String toString() {
    return 'WebRtcState.Error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WebRtcError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String status) connected,
    required TResult Function(String status) connecting,
    required TResult Function() Error,
  }) {
    return Error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String status)? connected,
    TResult? Function(String status)? connecting,
    TResult? Function()? Error,
  }) {
    return Error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String status)? connected,
    TResult Function(String status)? connecting,
    TResult Function()? Error,
    required TResult orElse(),
  }) {
    if (Error != null) {
      return Error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInitial value) initial,
    required TResult Function(_WebRtcConnected value) connected,
    required TResult Function(_WebRtcConnecting value) connecting,
    required TResult Function(_WebRtcError value) Error,
  }) {
    return Error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInitial value)? initial,
    TResult? Function(_WebRtcConnected value)? connected,
    TResult? Function(_WebRtcConnecting value)? connecting,
    TResult? Function(_WebRtcError value)? Error,
  }) {
    return Error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInitial value)? initial,
    TResult Function(_WebRtcConnected value)? connected,
    TResult Function(_WebRtcConnecting value)? connecting,
    TResult Function(_WebRtcError value)? Error,
    required TResult orElse(),
  }) {
    if (Error != null) {
      return Error(this);
    }
    return orElse();
  }
}

abstract class _WebRtcError implements WebRtcState {
  const factory _WebRtcError() = _$_WebRtcError;
}
