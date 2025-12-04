import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';

class TitleValueWidget extends StatelessWidget {
  const TitleValueWidget({
    super.key,
    required this.title,
    required this.value,
    this.valueMaxLine = 1,
    this.alignment = CrossAxisAlignment.start, // default: start
  });

  final String title;
  final String value;
  final int valueMaxLine;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        AutoSizeText(title, style: context.appTextTheme.subTitleS2),
        Gap(10.h),
        AutoSizeText(
          value,
          maxLines: valueMaxLine,
          overflow: TextOverflow.ellipsis,
          style: context.appTextTheme.bodyP3.copyWith(
            color: context.appColorScheme.textSecondaryLight,
          ),
        ),
      ],
    );
  }
}
