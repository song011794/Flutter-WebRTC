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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String room)? initalize,
    TResult? Function()? localConnecting,
    TResult? Function()? localConnected,
    TResult? Function()? remoteConnected,
    TResult? Function()? remoteConnecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String room)? initalize,
    TResult Function()? localConnecting,
    TResult Function()? localConnected,
    TResult Function()? remoteConnected,
    TResult Function()? remoteConnecting,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInialize value)? initalize,
    TResult? Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult? Function(_WebRtcLocalConnected value)? localConnected,
    TResult? Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult? Function(_WebRtcRemoteConnecting value)? remoteConnecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInialize value)? initalize,
    TResult Function(_WebRtcLocalConnecting value)? localConnecting,
    TResult Function(_WebRtcLocalConnected value)? localConnected,
    TResult Function(_WebRtcRemoteConnected value)? remoteConnected,
    TResult Function(_WebRtcRemoteConnecting value)? remoteConnecting,
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
mixin _$WebRtcState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInitial value) initial,
    required TResult Function(_WebRtcReady value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInitial value)? initial,
    TResult? Function(_WebRtcReady value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInitial value)? initial,
    TResult Function(_WebRtcReady value)? ready,
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
    required TResult Function() ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ready,
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
    required TResult Function(_WebRtcReady value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInitial value)? initial,
    TResult? Function(_WebRtcReady value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInitial value)? initial,
    TResult Function(_WebRtcReady value)? ready,
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
abstract class _$$_WebRtcReadyCopyWith<$Res> {
  factory _$$_WebRtcReadyCopyWith(
          _$_WebRtcReady value, $Res Function(_$_WebRtcReady) then) =
      __$$_WebRtcReadyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WebRtcReadyCopyWithImpl<$Res>
    extends _$WebRtcStateCopyWithImpl<$Res, _$_WebRtcReady>
    implements _$$_WebRtcReadyCopyWith<$Res> {
  __$$_WebRtcReadyCopyWithImpl(
      _$_WebRtcReady _value, $Res Function(_$_WebRtcReady) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WebRtcReady implements _WebRtcReady {
  const _$_WebRtcReady();

  @override
  String toString() {
    return 'WebRtcState.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WebRtcReady);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ready,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ready,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebRtcInitial value) initial,
    required TResult Function(_WebRtcReady value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebRtcInitial value)? initial,
    TResult? Function(_WebRtcReady value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebRtcInitial value)? initial,
    TResult Function(_WebRtcReady value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _WebRtcReady implements WebRtcState {
  const factory _WebRtcReady() = _$_WebRtcReady;
}
