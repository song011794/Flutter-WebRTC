part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginInitial; 
  const factory LoginState.success() = _LoginSuccess;   
  const factory LoginState.failEmpty() = _LoginFailEmpty;   
  const factory LoginState.failRoomEmpty() = _LoginFailRoomEmpty;   
  const factory LoginState.failNickNameEmpty() = _LoginFailNickNameEmpty;   
  const factory LoginState.failRoomFull() = _LoginFailRoomFull;   

  const factory LoginState.load() = _LoginLoad;  
}