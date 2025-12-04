import 'package:clean_starter/src/ui/default_imports.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({
    super.key,
    required this.onChange,
    this.initialText = '',
  });

  final void Function(String value) onChange;
  final String initialText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: InputField(
        onChanged: onChange,
        initialText: initialText,
        textInputAction: TextInputAction.next,
        autofillHints: const [AutofillHints.username, AutofillHints.email],
        validate: (value) {
          if (value == null || value.isEmpty) {
            return context.l10n.invalidUserName;
          }
          return null;
        },
        prefixIcon: SizedBox(
          width: 45,
          child: Row(
            children: [
              const Gap(45 / 3),
              SvgPicture.asset(
                SvgAssets.user,
                colorFilter: ColorFilter.mode(
                  context.appColorScheme.iconHint,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
        ),
        prefixIconConstraints: const BoxConstraints(maxWidth: 56),
        hintText: context.l10n.userName,
      ),
    );
  }
}
