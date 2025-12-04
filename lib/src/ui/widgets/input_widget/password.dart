import 'package:clean_starter/src/ui/default_imports.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.onChange,
    this.initialText = '',
    this.obscureText = true,
    required this.onObscureChange,
  });

  final void Function(String value) onChange;
  final void Function(bool value) onObscureChange;
  final String initialText;
  final bool obscureText;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  late final ValueNotifier<bool> obSecureTextNotifier;

  @override
  void initState() {
    obSecureTextNotifier = ValueNotifier(widget.obscureText);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    obSecureTextNotifier.value = widget.obscureText;
  }

  @override
  void dispose() {
    obSecureTextNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: ValueListenableBuilder<bool>(
        valueListenable: obSecureTextNotifier,
        builder: (context, isObSecureText, _) {
          return InputField(
            onChanged: widget.onChange,
            obscureText: isObSecureText,
            initialText: widget.initialText,
            autofillHints: const [AutofillHints.password],
            validate: (value) {
              if (value == null || value.isEmpty) {
                return context.l10n.invalidPassword;
              }
              return null;
            },
            prefixIcon: SizedBox(
              width: 45,
              child: Row(
                children: [
                  const Gap(45 / 3),
                  SvgPicture.asset(
                    SvgAssets.lock,
                    colorFilter: ColorFilter.mode(
                      context.appColorScheme.iconHint,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
            suffixIcon: InkWell(
              onTap: () {
                widget.onObscureChange(!isObSecureText);
                obSecureTextNotifier.value = !isObSecureText;
              },
              child: SizedBox(
                width: 45,
                child: Row(
                  children: [
                    const Gap(45 / 3),
                    SvgPicture.asset(
                      isObSecureText ? SvgAssets.hide : SvgAssets.show,
                      colorFilter: ColorFilter.mode(
                        context.appColorScheme.iconHint,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            prefixIconConstraints: const BoxConstraints(maxWidth: 56),
            suffixIconConstraints: const BoxConstraints(maxWidth: 56),
            contentPadding: EdgeInsets.only(right: 16.w),
            hintText: context.l10n.password,
          );
        },
      ),
    );
  }
}
