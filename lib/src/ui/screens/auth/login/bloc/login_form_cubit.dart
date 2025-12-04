import 'package:clean_starter/src/utils/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_cubit.freezed.dart';
part 'login_form_state.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit()
    : super(const LoginFormState(username: "emilys", password: "emilyspass"));

  void onUsernameChange(String value) {
    final loginState = state.copyWith(username: value);
    emit(loginState);
    log.d(state);
  }

  void onPasswordChange(String value) {
    final loginState = state.copyWith(password: value);
    emit(loginState);
  }

  void onObscureChange(bool value) {
    final loginState = state.copyWith(obscureText: value);
    emit(loginState);
  }

  void onRememberMeChange(bool value) {
    final loginState = state.copyWith(rememberMe: value);
    emit(loginState);
  }
}
