import 'package:clean_starter/src/ui/default_imports.dart';

class DropdownField extends StatefulWidget {
  const DropdownField({
    super.key,
    this.value,
    required this.items,
    this.hintText,
    this.onChanged,
    this.validator,
    this.borderColor,
    this.focusedBorderColor,
    this.borderRadius,
  });

  final String? value;
  final List<String> items;
  final String? hintText;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final double? borderRadius;

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    InputBorder getBorder(Color color) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.w),
      borderSide: BorderSide(color: color, width: 1.w),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
            boxShadow: [
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
            ],
          ),
          child: DropdownButtonFormField<String>(
            initialValue: selectedValue,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 17.5,
              ),
              border: getBorder(
                widget.borderColor ?? context.appColorScheme.strokeLight,
              ),
              enabledBorder: getBorder(
                widget.borderColor ?? context.appColorScheme.strokeLight,
              ),
              focusedBorder: getBorder(
                widget.focusedBorderColor ??
                    context.appColorScheme.primaryNormal,
              ),
              filled: true,
              fillColor: context.appColorScheme.fillMain,
              hintText: widget.hintText,
              hintStyle: context.appTextTheme.subTitleS1.copyWith(
                color: context.appColorScheme.textHint,
              ),
            ),
            items: widget.items
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (val) {
              setState(() => selectedValue = val);
              widget.onChanged?.call(val);
            },
            validator: widget.validator,
          ),
        ),
      ],
    );
  }
}
