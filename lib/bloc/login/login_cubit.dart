import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const _LoginInitial());

  void onEnterChatRoom(String roomName, String nickName) {
      emit(const _LoginLoad());

    if (roomName.isEmpty && nickName.isEmpty) {
      emit(const _LoginFailEmpty());
      return;
    }
    if (roomName.isEmpty) {
      emit(const _LoginFailRoomEmpty());
    } else if (nickName.isEmpty) {
      emit(const _LoginFailNickNameEmpty());
    } else {
      emit(const _LoginSuccess());
    }
  }
}
