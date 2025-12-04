part of 'components.dart';

class SignUpRow extends StatelessWidget {
  const SignUpRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            AuthRoutes.goToSignupPage(context);
          },
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Padding(
            padding: const EdgeInsetsGeometry.symmetric(horizontal: 8),
            child: AutoSizeText(
              context.l10n.signUpNow,
              style: context.appTextTheme.subTitleS1.copyWith(
                color: context.appColorScheme.brandPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
