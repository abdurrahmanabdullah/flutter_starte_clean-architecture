import 'package:clean_starter/src/ui/default_imports.dart';

class CustomSearchInput extends StatefulWidget {
  final TextEditingController? controller;
  final void Function(String) onSearchTextChange;
  final String icon;
  final String hintText;
  final String? initialValue;
  final void Function(String)? onSubmitted;

  const CustomSearchInput({
    super.key,
    required this.onSearchTextChange,
    required this.icon,
    required this.hintText,
    this.controller,
    this.onSubmitted,
    this.initialValue,
  });

  @override
  State<CustomSearchInput> createState() => _CustomSearchInputState();
}

class _CustomSearchInputState extends State<CustomSearchInput> {
  late final TextEditingController _controller;
  static const waitTime = 300;
  var lastTextSent = '';
  var newTextSent = '';
  var textChangeTime = 0;
  var sending = false;

  @override
  void initState() {
    super.initState();
    _controller =
        widget.controller ??
        TextEditingController(text: widget.initialValue ?? '');
    if (widget.initialValue != null && widget.initialValue!.isNotEmpty) {
      onSearchTextChange(widget.initialValue);
    }
  }

  Future<void> onSearchTextChange(String? value) async {
    newTextSent = value ?? '';
    textChangeTime = DateTime.now().millisecondsSinceEpoch;
    if (sending) return;
    sending = true;
    if (DateTime.now().millisecondsSinceEpoch < textChangeTime + waitTime) {
      final diff =
          textChangeTime + waitTime - DateTime.now().millisecondsSinceEpoch;
      await Future.delayed(Duration(milliseconds: diff));
    }
    if (lastTextSent != newTextSent) {
      lastTextSent = newTextSent;
      widget.onSearchTextChange(lastTextSent);
    }
    sending = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      decoration: BoxDecoration(
        color: context.appColorScheme.baseWhite,
        borderRadius: BorderRadius.circular(12.w),
        border: Border.all(
          color: context.appColorScheme.strokeLight,
          width: 1.w,
        ),
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        controller: _controller,
        onChanged: onSearchTextChange,
        onFieldSubmitted: widget.onSubmitted,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 16.w,
            horizontal: 16.w,
          ),
          suffixIconConstraints: BoxConstraints(
            minWidth: 40.w,
            minHeight: 40.w,
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
            child: Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                color: context.appColorScheme.fillGray2,
                borderRadius: BorderRadius.circular(4.w),
              ),
              child: Center(
                child: SvgPicture.asset(
                  widget.icon,
                  width: 24.w,
                  height: 24.w,
                  colorFilter: ColorFilter.mode(
                    context.appColorScheme.baseBlack,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          hintText: widget.hintText,
          hintStyle: context.appTextTheme.subTitleS1.copyWith(
            color: context.appColorScheme.textSecondaryThine,
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.onPrimary,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.w),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
