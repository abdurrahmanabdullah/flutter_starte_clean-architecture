import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.internetRequired = false,
    this.expanded = true,
    this.showRightArrow = false,
    this.showBackGradient = true,
    this.size,
    this.elevation = 0,
    this.loadingColor,
    this.titleStyle,
    this.borderRadius = 12,
    this.backgroundColor,
    this.border,
    this.gradient,
    this.padding,
  });

  final String title;
  final FutureOr<void> Function() onPressed;
  final bool internetRequired;
  final bool expanded;
  final bool showRightArrow;
  final bool showBackGradient;
  final Size? size;
  final double elevation;
  final Color? loadingColor;
  final TextStyle? titleStyle;
  final double? borderRadius;
  final Color? backgroundColor;
  final BoxBorder? border;
  final Gradient? gradient;
  final EdgeInsetsGeometry? padding;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: TimeLapseButton(
        onPressed: () async {
          if (isLoading) return;
          if (mounted) setState(() => isLoading = true);
          try {
            await widget.onPressed.call();
          } catch (e) {
            if (mounted) setState(() => isLoading = false);
            return;
          }
          if (mounted) setState(() => isLoading = false);
        },
        internetRequired: widget.internetRequired,
        enabled: !isLoading,
        expanded: widget.expanded,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
          ),
          overlayColor: context.appColorScheme.primaryHover,
          fixedSize: const Size.fromHeight(56),
          backgroundColor: context.appColorScheme.brandPrimary,
          elevation: 0,
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: isLoading
              ? SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor:
                        widget.loadingColor ??
                        context.appColorScheme.onBrandPrimary,
                  ),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: AutoSizeText(
                    widget.title,
                    style:
                        widget.titleStyle ??
                        context.appTextTheme.titleT2.copyWith(
                          color: context.appColorScheme.onBrandPrimary,
                        ),
                  ),
                ),
        ),
      ),
    );
  }
}
