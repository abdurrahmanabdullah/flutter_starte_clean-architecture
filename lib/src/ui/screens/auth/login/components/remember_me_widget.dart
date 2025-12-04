part of 'components.dart';

class RememberMeWidget extends StatelessWidget {
  const RememberMeWidget({
    super.key,
    required this.onRememberMeChange,
    this.initialValue = false,
  });

  final void Function(bool value) onRememberMeChange;
  final bool initialValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCheckbox(
            title: context.l10n.rememberMe,
            onChange: onRememberMeChange,
            initialValue: initialValue,
          ),
          InkWell(
            onTap: () {},
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AutoSizeText(
                context.l10n.forgotPassword,
                style: context.appTextTheme.bodyP2.copyWith(
                  color: context.appColorScheme.brandPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
