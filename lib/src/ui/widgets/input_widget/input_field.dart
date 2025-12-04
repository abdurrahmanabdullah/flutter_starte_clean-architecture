import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:flutter/services.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    this.controller,
    this.maxLine = 1,
    this.hintText,
    this.validate,
    this.focusNode,
    this.keyboardType,
    this.inputFormatters,
    this.textInputAction,
    this.onSaved,
    this.onChanged,
    this.onTapOutside,
    this.autovalidateMode,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.filledColor,
    this.hintStyle,
    this.textStyle,
    this.borderColor,
    this.focusedBorderColor,
    this.contentPadding,
    this.onTap,
    this.cursorColor,
    this.readOnly = false,
    this.autofillHints,
    this.borderWidth,
    this.label,
    this.obscureText = false,
    this.errorBorder,
    this.border,
    this.focusedBorder,
    this.labelStyle,
    this.errorMessage,
    this.onFieldSubmitted,
    this.borderRadius,
    this.showShadow = true,
    this.initialText = "",
    this.filled = true,
  });

  final TextEditingController? controller;
  final void Function(String value)? onChanged;
  final void Function(String? value)? onSaved;
  final void Function(PointerDownEvent event)? onTapOutside;
  final int maxLine;
  final String? hintText;
  final String? Function(String? value)? validate;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final AutovalidateMode? autovalidateMode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final Color? filledColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? contentPadding;
  final VoidCallback? onTap;
  final Color? cursorColor;
  final bool readOnly;
  final Iterable<String>? autofillHints;
  final double? borderWidth;
  final String? label;
  final bool obscureText;
  final InputBorder? errorBorder;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final ValueNotifier<String?>? errorMessage;
  final void Function(String)? onFieldSubmitted;
  final double? borderRadius;
  final bool showShadow;
  final String initialText;
  final bool filled;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  String? errorMessage;
  bool active = false;
  bool hasData = false;
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller =
        widget.controller ?? TextEditingController(text: widget.initialText);
    hasData = controller.text.isNotEmpty;
    errorMessage = widget.errorMessage?.value;
    active = widget.errorMessage?.value != null;
    if (active) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {});
        }
      });
    }
    controller.addListener(_handleControllerChange);
    widget.errorMessage?.addListener(_checkErrorMessage);
  }

  @override
  void dispose() {
    widget.errorMessage?.removeListener(_checkErrorMessage);
    controller.removeListener(_handleControllerChange);
    if (widget.controller == null) {
      controller.dispose();
    }
    super.dispose();
  }

  void _checkErrorMessage() {
    if (!_hasError && widget.errorMessage?.value != errorMessage) {
      errorMessage = widget.errorMessage?.value;
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {
            active = true;
          });
        }
      });
    }
  }

  void _handleControllerChange() {
    // if (!active && controller.text.isNotEmpty) {
    //   if (mounted) {
    //     setState(() => active = true);
    //   }
    // }
    bool hasText = controller.text.isNotEmpty;
    if (hasData != hasText) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {
            hasData = hasText;
          });
        }
      });
    }
    _checkError();
  }

  void _checkError() {
    if (widget.validate != null) {
      final message = widget.validate!(controller.text);
      if (message != errorMessage) {
        if (mounted) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            if (context.mounted) {
              setState(() => errorMessage = message);
            }
          });
        }
      }
    }
  }

  bool get _hasError =>
      active && errorMessage != null && errorMessage!.isNotEmpty;

  InputBorder get _errorBorder =>
      widget.errorBorder ??
      OutlineInputBorder(
        borderSide: BorderSide(
          color: context.appColorScheme.statusError,
          width: widget.borderWidth ?? 1.w,
        ),
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.w),
      );

  InputBorder get _border =>
      widget.border ??
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.w),
        borderSide: widget.borderColor != null
            ? BorderSide(
                color: widget.borderColor!,
                width: widget.borderWidth ?? 1.w,
              )
            : BorderSide.none,
      );

  InputBorder get _borderWithErrorAndFocus => _hasError
      ? _errorBorder
      : hasData
      ? widget.focusedBorder ?? _border
      : _border;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: widget.showShadow
                ? const [
                    BoxShadow(
                      color: Color(0x05000000),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                    BoxShadow(
                      color: Color(0x03000000),
                      blurRadius: 7,
                      offset: Offset(0, 11),
                    ),
                    BoxShadow(
                      color: Color(0x00000000),
                      blurRadius: 8,
                      offset: Offset(0, 20),
                    ),
                    BoxShadow(
                      color: Color(0x00000000),
                      blurRadius: 9,
                      offset: Offset(0, 31),
                    ),
                  ]
                : null,
          ),
          child: TextFormField(
            controller: controller,
            focusNode: widget.focusNode,
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatters,
            textInputAction: widget.textInputAction,
            maxLines: widget.maxLine,
            obscureText: widget.obscureText,
            readOnly: widget.readOnly,
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onFieldSubmitted,
            onSaved: widget.onSaved,
            onTap: widget.onTap,
            onTapOutside:
                widget.onTapOutside ??
                (tap) => FocusManager.instance.primaryFocus?.unfocus(),
            autofillHints: widget.autofillHints,
            cursorColor:
                widget.cursorColor ??
                widget.textStyle?.color ??
                context.appColorScheme.primaryNormal,
            style: widget.textStyle ?? context.appTextTheme.subTitleS1,
            decoration: InputDecoration(
              contentPadding:
                  widget.contentPadding ??
                  EdgeInsets.symmetric(horizontal: 16.w, vertical: 17.5),
              errorStyle: const TextStyle(fontSize: 0),
              label: widget.label != null
                  ? AutoSizeText(
                      widget.label!,
                      style:
                          widget.labelStyle ??
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: _hasError
                                ? context.appColorScheme.statusError
                                : Theme.of(context).colorScheme.primary,
                          ),
                    )
                  : null,
              hintText: widget.hintText,
              hintStyle:
                  widget.hintStyle ??
                  context.appTextTheme.subTitleS1.copyWith(
                    color: context.appColorScheme.textHint,
                  ),
              isDense: false,
              border: _borderWithErrorAndFocus,
              enabledBorder: _borderWithErrorAndFocus,
              focusedBorder: _borderWithErrorAndFocus,
              focusedErrorBorder: _borderWithErrorAndFocus,
              errorBorder: _borderWithErrorAndFocus,
              disabledBorder: _borderWithErrorAndFocus,
              suffixIcon: _hasError
                  ? Align(
                      alignment: Alignment.centerLeft,
                      child: SvgPicture.asset(SvgAssets.error),
                    )
                  : widget.suffixIcon,
              suffixIconConstraints: _hasError
                  ? const BoxConstraints(maxWidth: 24)
                  : widget.suffixIconConstraints,
              prefixIcon: widget.prefixIcon,
              prefixIconConstraints: widget.prefixIconConstraints,
              fillColor: widget.filledColor ?? context.appColorScheme.fillMain,
              filled: widget.filled,
            ),
            validator: (value) {
              errorMessage = widget.validate?.call(value);
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                if (mounted) {
                  setState(() {
                    active = true;
                  });
                }
              });
              return errorMessage;
            },
          ),
        ),
        if (_hasError) ...[
          SizedBox(width: 6.w),
          AutoSizeText(
            errorMessage ?? "Invalid input",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ],
      ],
    );
  }
}
