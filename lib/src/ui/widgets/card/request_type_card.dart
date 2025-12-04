import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';

class RequestTypeCard extends StatelessWidget {
  const RequestTypeCard({
    super.key,
    required this.title,
    this.onTap,
    this.selected = false,
  });

  final String title;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.w),
      child: Container(
        height: 42.w,
        padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 24.w),
        decoration: BoxDecoration(
          color: selected
              ? context.appColorScheme.primaryNormal
              : context.appColorScheme.baseWhite,
          border: selected
              ? null
              : Border.all(
                  color: context.appColorScheme.strokeLight,
                  width: 1.w,
                ),
          borderRadius: BorderRadius.circular(12.w),
        ),
        alignment: Alignment.center,
        child: AutoSizeText(
          title,
          minFontSize: 12,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: context.appTextTheme.subTitleS2.copyWith(
            color: selected
                ? context.appColorScheme.baseWhite
                : context.appColorScheme.baseBlack,
          ),
        ),
      ),
    );
  }
}
