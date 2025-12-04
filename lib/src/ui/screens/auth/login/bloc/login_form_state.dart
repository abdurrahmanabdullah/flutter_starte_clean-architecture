part of 'login_form_cubit.dart';

@freezed
sealed class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    @Default('') String username,
    @Default('') String password,
    @Default(false) bool rememberMe,
    @Default(true) bool obscureText,
  }) = _LoginFormState;
}
