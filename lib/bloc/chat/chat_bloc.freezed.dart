// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) onRecieve,
    required TResult Function(String text, String nickName) onSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? onRecieve,
    TResult? Function(String text, String nickName)? onSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? onRecieve,
    TResult Function(String text, String nickName)? onSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatReceive value) onRecieve,
    required TResult Function(_ChatSend value) onSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatReceive value)? onRecieve,
    TResult? Function(_ChatSend value)? onSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatReceive value)? onRecieve,
    TResult Function(_ChatSend value)? onSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChatReceiveCopyWith<$Res> {
  factory _$$_ChatReceiveCopyWith(
          _$_ChatReceive value, $Res Function(_$_ChatReceive) then) =
      __$$_ChatReceiveCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$_ChatReceiveCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_ChatReceive>
    implements _$$_ChatReceiveCopyWith<$Res> {
  __$$_ChatReceiveCopyWithImpl(
      _$_ChatReceive _value, $Res Function(_$_ChatReceive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ChatReceive(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ChatReceive implements _ChatReceive {
  const _$_ChatReceive([this.data]);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'ChatEvent.onRecieve(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatReceive &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatReceiveCopyWith<_$_ChatReceive> get copyWith =>
      __$$_ChatReceiveCopyWithImpl<_$_ChatReceive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) onRecieve,
    required TResult Function(String text, String nickName) onSend,
  }) {
    return onRecieve(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? onRecieve,
    TResult? Function(String text, String nickName)? onSend,
  }) {
    return onRecieve?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? onRecieve,
    TResult Function(String text, String nickName)? onSend,
    required TResult orElse(),
  }) {
    if (onRecieve != null) {
      return onRecieve(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatReceive value) onRecieve,
    required TResult Function(_ChatSend value) onSend,
  }) {
    return onRecieve(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatReceive value)? onRecieve,
    TResult? Function(_ChatSend value)? onSend,
  }) {
    return onRecieve?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatReceive value)? onRecieve,
    TResult Function(_ChatSend value)? onSend,
    required TResult orElse(),
  }) {
    if (onRecieve != null) {
      return onRecieve(this);
    }
    return orElse();
  }
}

abstract class _ChatReceive implements ChatEvent {
  const factory _ChatReceive([final dynamic data]) = _$_ChatReceive;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$_ChatReceiveCopyWith<_$_ChatReceive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChatSendCopyWith<$Res> {
  factory _$$_ChatSendCopyWith(
          _$_ChatSend value, $Res Function(_$_ChatSend) then) =
      __$$_ChatSendCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String nickName});
}

/// @nodoc
class __$$_ChatSendCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_ChatSend>
    implements _$$_ChatSendCopyWith<$Res> {
  __$$_ChatSendCopyWithImpl(
      _$_ChatSend _value, $Res Function(_$_ChatSend) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? nickName = null,
  }) {
    return _then(_$_ChatSend(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatSend implements _ChatSend {
  const _$_ChatSend(this.text, this.nickName);

  @override
  final String text;
  @override
  final String nickName;

  @override
  String toString() {
    return 'ChatEvent.onSend(text: $text, nickName: $nickName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatSend &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, nickName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatSendCopyWith<_$_ChatSend> get copyWith =>
      __$$_ChatSendCopyWithImpl<_$_ChatSend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) onRecieve,
    required TResult Function(String text, String nickName) onSend,
  }) {
    return onSend(text, nickName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? onRecieve,
    TResult? Function(String text, String nickName)? onSend,
  }) {
    return onSend?.call(text, nickName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? onRecieve,
    TResult Function(String text, String nickName)? onSend,
    required TResult orElse(),
  }) {
    if (onSend != null) {
      return onSend(text, nickName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatReceive value) onRecieve,
    required TResult Function(_ChatSend value) onSend,
  }) {
    return onSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatReceive value)? onRecieve,
    TResult? Function(_ChatSend value)? onSend,
  }) {
    return onSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatReceive value)? onRecieve,
    TResult Function(_ChatSend value)? onSend,
    required TResult orElse(),
  }) {
    if (onSend != null) {
      return onSend(this);
    }
    return orElse();
  }
}

abstract class _ChatSend implements ChatEvent {
  const factory _ChatSend(final String text, final String nickName) =
      _$_ChatSend;

  String get text;
  String get nickName;
  @JsonKey(ignore: true)
  _$$_ChatSendCopyWith<_$_ChatSend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  List<Map<String, dynamic>> get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> data) initial,
    required TResult Function(List<Map<String, dynamic>> data) reviceMessage,
    required TResult Function(List<Map<String, dynamic>> data) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> data)? initial,
    TResult? Function(List<Map<String, dynamic>> data)? reviceMessage,
    TResult? Function(List<Map<String, dynamic>> data)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? initial,
    TResult Function(List<Map<String, dynamic>> data)? reviceMessage,
    TResult Function(List<Map<String, dynamic>> data)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatInitial value) initial,
    required TResult Function(_SocketReceiveMsaage value) reviceMessage,
    required TResult Function(_SocketSendMsaage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatInitial value)? initial,
    TResult? Function(_SocketReceiveMsaage value)? reviceMessage,
    TResult? Function(_SocketSendMsaage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatInitial value)? initial,
    TResult Function(_SocketReceiveMsaage value)? reviceMessage,
    TResult Function(_SocketSendMsaage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({List<Map<String, dynamic>> data});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatInitialCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$_ChatInitialCopyWith(
          _$_ChatInitial value, $Res Function(_$_ChatInitial) then) =
      __$$_ChatInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>> data});
}

/// @nodoc
class __$$_ChatInitialCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ChatInitial>
    implements _$$_ChatInitialCopyWith<$Res> {
  __$$_ChatInitialCopyWithImpl(
      _$_ChatInitial _value, $Res Function(_$_ChatInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChatInitial(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_ChatInitial implements _ChatInitial {
  const _$_ChatInitial([final List<Map<String, dynamic>> data = const []])
      : _data = data;

  final List<Map<String, dynamic>> _data;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ChatState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatInitial &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatInitialCopyWith<_$_ChatInitial> get copyWith =>
      __$$_ChatInitialCopyWithImpl<_$_ChatInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> data) initial,
    required TResult Function(List<Map<String, dynamic>> data) reviceMessage,
    required TResult Function(List<Map<String, dynamic>> data) sendMessage,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> data)? initial,
    TResult? Function(List<Map<String, dynamic>> data)? reviceMessage,
    TResult? Function(List<Map<String, dynamic>> data)? sendMessage,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? initial,
    TResult Function(List<Map<String, dynamic>> data)? reviceMessage,
    TResult Function(List<Map<String, dynamic>> data)? sendMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatInitial value) initial,
    required TResult Function(_SocketReceiveMsaage value) reviceMessage,
    required TResult Function(_SocketSendMsaage value) sendMessage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatInitial value)? initial,
    TResult? Function(_SocketReceiveMsaage value)? reviceMessage,
    TResult? Function(_SocketSendMsaage value)? sendMessage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatInitial value)? initial,
    TResult Function(_SocketReceiveMsaage value)? reviceMessage,
    TResult Function(_SocketSendMsaage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ChatInitial implements ChatState {
  const factory _ChatInitial([final List<Map<String, dynamic>> data]) =
      _$_ChatInitial;

  @override
  List<Map<String, dynamic>> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChatInitialCopyWith<_$_ChatInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SocketReceiveMsaageCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$_SocketReceiveMsaageCopyWith(_$_SocketReceiveMsaage value,
          $Res Function(_$_SocketReceiveMsaage) then) =
      __$$_SocketReceiveMsaageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>> data});
}

/// @nodoc
class __$$_SocketReceiveMsaageCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_SocketReceiveMsaage>
    implements _$$_SocketReceiveMsaageCopyWith<$Res> {
  __$$_SocketReceiveMsaageCopyWithImpl(_$_SocketReceiveMsaage _value,
      $Res Function(_$_SocketReceiveMsaage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SocketReceiveMsaage(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_SocketReceiveMsaage implements _SocketReceiveMsaage {
  const _$_SocketReceiveMsaage(
      [final List<Map<String, dynamic>> data = const []])
      : _data = data;

  final List<Map<String, dynamic>> _data;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ChatState.reviceMessage(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocketReceiveMsaage &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocketReceiveMsaageCopyWith<_$_SocketReceiveMsaage> get copyWith =>
      __$$_SocketReceiveMsaageCopyWithImpl<_$_SocketReceiveMsaage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> data) initial,
    required TResult Function(List<Map<String, dynamic>> data) reviceMessage,
    required TResult Function(List<Map<String, dynamic>> data) sendMessage,
  }) {
    return reviceMessage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> data)? initial,
    TResult? Function(List<Map<String, dynamic>> data)? reviceMessage,
    TResult? Function(List<Map<String, dynamic>> data)? sendMessage,
  }) {
    return reviceMessage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? initial,
    TResult Function(List<Map<String, dynamic>> data)? reviceMessage,
    TResult Function(List<Map<String, dynamic>> data)? sendMessage,
    required TResult orElse(),
  }) {
    if (reviceMessage != null) {
      return reviceMessage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatInitial value) initial,
    required TResult Function(_SocketReceiveMsaage value) reviceMessage,
    required TResult Function(_SocketSendMsaage value) sendMessage,
  }) {
    return reviceMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatInitial value)? initial,
    TResult? Function(_SocketReceiveMsaage value)? reviceMessage,
    TResult? Function(_SocketSendMsaage value)? sendMessage,
  }) {
    return reviceMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatInitial value)? initial,
    TResult Function(_SocketReceiveMsaage value)? reviceMessage,
    TResult Function(_SocketSendMsaage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (reviceMessage != null) {
      return reviceMessage(this);
    }
    return orElse();
  }
}

abstract class _SocketReceiveMsaage implements ChatState {
  const factory _SocketReceiveMsaage([final List<Map<String, dynamic>> data]) =
      _$_SocketReceiveMsaage;

  @override
  List<Map<String, dynamic>> get data;
  @override
  @JsonKey(ignore: true)
  _$$_SocketReceiveMsaageCopyWith<_$_SocketReceiveMsaage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SocketSendMsaageCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$_SocketSendMsaageCopyWith(
          _$_SocketSendMsaage value, $Res Function(_$_SocketSendMsaage) then) =
      __$$_SocketSendMsaageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>> data});
}

/// @nodoc
class __$$_SocketSendMsaageCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_SocketSendMsaage>
    implements _$$_SocketSendMsaageCopyWith<$Res> {
  __$$_SocketSendMsaageCopyWithImpl(
      _$_SocketSendMsaage _value, $Res Function(_$_SocketSendMsaage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SocketSendMsaage(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_SocketSendMsaage implements _SocketSendMsaage {
  const _$_SocketSendMsaage([final List<Map<String, dynamic>> data = const []])
      : _data = data;

  final List<Map<String, dynamic>> _data;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ChatState.sendMessage(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocketSendMsaage &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocketSendMsaageCopyWith<_$_SocketSendMsaage> get copyWith =>
      __$$_SocketSendMsaageCopyWithImpl<_$_SocketSendMsaage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> data) initial,
    required TResult Function(List<Map<String, dynamic>> data) reviceMessage,
    required TResult Function(List<Map<String, dynamic>> data) sendMessage,
  }) {
    return sendMessage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> data)? initial,
    TResult? Function(List<Map<String, dynamic>> data)? reviceMessage,
    TResult? Function(List<Map<String, dynamic>> data)? sendMessage,
  }) {
    return sendMessage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? initial,
    TResult Function(List<Map<String, dynamic>> data)? reviceMessage,
    TResult Function(List<Map<String, dynamic>> data)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatInitial value) initial,
    required TResult Function(_SocketReceiveMsaage value) reviceMessage,
    required TResult Function(_SocketSendMsaage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatInitial value)? initial,
    TResult? Function(_SocketReceiveMsaage value)? reviceMessage,
    TResult? Function(_SocketSendMsaage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatInitial value)? initial,
    TResult Function(_SocketReceiveMsaage value)? reviceMessage,
    TResult Function(_SocketSendMsaage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SocketSendMsaage implements ChatState {
  const factory _SocketSendMsaage([final List<Map<String, dynamic>> data]) =
      _$_SocketSendMsaage;

  @override
  List<Map<String, dynamic>> get data;
  @override
  @JsonKey(ignore: true)
  _$$_SocketSendMsaageCopyWith<_$_SocketSendMsaage> get copyWith =>
      throw _privateConstructorUsedError;
}
