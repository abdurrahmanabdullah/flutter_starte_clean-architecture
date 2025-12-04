part of 'components.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginFormCubit>();
    return Column(
      children: [
        Hero(
          tag: "LoginUserNameField",
          child: UsernameField(
            initialText: cubit.state.username,
            onChange: cubit.onUsernameChange,
          ),
        ),
        Gap(16.h),
        Hero(
          tag: "LoginPasswordField",
          child: PasswordField(
            initialText: cubit.state.password,
            obscureText: cubit.state.obscureText,
            onChange: cubit.onPasswordChange,
            onObscureChange: cubit.onObscureChange,
          ),
        ),
        Gap(16.h),
        Hero(
          tag: "LoginRememberMe",
          child: RememberMeWidget(
            initialValue: cubit.state.rememberMe,
            onRememberMeChange: cubit.onRememberMeChange,
          ),
        ),
      ],
    );
  }
}
