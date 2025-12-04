part of 'components.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        log.d(' state.phase: ${state.phase}');
        if (state.phase == UseCasePhase.success) {
          SnackBarHelper.showSnackBar(
            SuccessSnackBar(message: context.l10n.loginSuccess),
          );
          DashboardRoute.goToHome(context);
          context.read<LoginCubit>().resetPhase();
        }
        if (state.phase == UseCasePhase.failure) {
          SnackBarHelper.showSnackBar(ErrorSnackBar(message: state.failure.message));
          context.read<LoginCubit>().resetPhase();
        }
      },
      child: PrimaryButton(
        title: context.l10n.signIn,
        onPressed: () async {
          if (formKey.currentState?.validate() == true) {
            final formState = context.read<LoginFormCubit>().state;
            var encoded = formState.password;

            /// TODO: apply password encoding if needed
            // for (int i = 0; i < 3; i++) {
            //   encoded = base64.encode(utf8.encode(encoded));
            // }

            final loginModel = LoginRequestModel(
              username: formState.username,
              password: encoded,
            );
            final cubit = context.read<LoginCubit>();
            cubit.updateParams(loginModel, true);
            await cubit.call();
          }
        },
        padding: EdgeInsets.symmetric(horizontal: 16.w),
      ),
    );
  }
}
