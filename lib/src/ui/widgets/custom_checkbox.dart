import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    super.key,
    this.title,
    this.initialValue = false,
    this.unSelectedColor,
    this.selectedColor,
    this.unSelectedTextStyle,
    this.selectedTextStyle,
    this.onChange,
    this.gap = 8,
  });

  final String? title;
  final bool initialValue;
  final Color? unSelectedColor;
  final Color? selectedColor;
  final TextStyle? unSelectedTextStyle;
  final TextStyle? selectedTextStyle;
  final void Function(bool value)? onChange;
  final double gap;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late ValueNotifier<bool> valueNotifier;

  @override
  void initState() {
    valueNotifier = ValueNotifier(widget.initialValue);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    valueNotifier.value = widget.initialValue;
  }

  @override
  void dispose() {
    valueNotifier.dispose();
    super.dispose();
  }

  TextStyle getTextStyle(bool value) {
    TextStyle defaultStyle = context.appTextTheme.bodyP2.copyWith(
      color: context.appColorScheme.textHint,
    );
    if (value) {
      if (widget.selectedTextStyle == null) {
        return defaultStyle;
      } else {
        return widget.selectedTextStyle!;
      }
    } else {
      if (widget.unSelectedTextStyle == null) {
        return defaultStyle;
      } else {
        return widget.unSelectedTextStyle!;
      }
    }
  }

  Color getColor(bool value) {
    if (value) {
      if (widget.selectedColor == null) {
        return context.appColorScheme.brandPrimary;
      } else {
        return widget.selectedColor!;
      }
    } else {
      if (widget.unSelectedColor == null) {
        return context.appColorScheme.textHint;
      } else {
        return widget.unSelectedColor!;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: valueNotifier,
      builder: (context, value, child) {
        return InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          onTap: () {
            widget.onChange?.call(!value);
            valueNotifier.value = !value;
          },
          child: Row(
            children: [
              WidgetSwiper(
                key: const ValueKey("___CheckBox___"),
                isInitial: !value,
                secondChild: SvgPicture.asset(
                  SvgAssets.check,
                  colorFilter: ColorFilter.mode(
                    getColor(value),
                    BlendMode.srcIn,
                  ),
                ),
                initialChild: SvgPicture.asset(
                  SvgAssets.unCheck,
                  colorFilter: ColorFilter.mode(
                    getColor(value),
                    BlendMode.srcIn,
                  ),
                ),
              ),

              if (widget.title != null && widget.title!.isNotEmpty) ...[
                Gap(widget.gap),
                AnimatedDefaultTextStyle(
                  style: getTextStyle(value),
                  duration: const Duration(milliseconds: 400),
                  child: AutoSizeText(widget.title!),
                ),
                const Gap(5),
              ],
            ],
          ),
        );
      },
    );
  }
}
