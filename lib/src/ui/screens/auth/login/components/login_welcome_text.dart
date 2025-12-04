part of 'components.dart';

class LoginWelcomeText extends StatelessWidget {
  const LoginWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: "LoginWelcomeText",
          child: AutoSizeText(
            context.l10n.welcome,
            style: context.appTextTheme.displayD3.copyWith(
              color: context.appColorScheme.fillBrandSecondary,
            ),
          ),
        ),
        Gap(4.h),
        Hero(
          tag: "LoginWelcomeText2",
          child: AutoSizeText(
            context.l10n.letsContinueYourAccount,
            style: context.appTextTheme.subTitleS1.copyWith(
              color: context.appColorScheme.neutrals.shade600,
            ),
          ),
        ),
      ],
    );
  }
}
