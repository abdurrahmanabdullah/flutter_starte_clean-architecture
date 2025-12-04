import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';

class BaseHomeCard extends StatelessWidget {
  const BaseHomeCard({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });

  final String title;
  final String image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12.w),
        onTap: onTap,
        child: Container(
          height: 72.w,
          decoration: BoxDecoration(
            color: context.appColorScheme.iconPrimaryAlt,
            boxShadow: [
              BoxShadow(
                color: context.appColorScheme.shadowN2.withValues(alpha: 0.04),
                offset: const Offset(0, 8),
                blurRadius: 18,
              ),
              BoxShadow(
                color: context.appColorScheme.shadowN2.withValues(alpha: 0.03),
                offset: const Offset(0, 33),
                blurRadius: 33,
              ),
              BoxShadow(
                color: context.appColorScheme.shadowN2.withValues(alpha: 0.02),
                offset: const Offset(0, 73),
                blurRadius: 44,
              ),
              BoxShadow(
                color: context.appColorScheme.shadowN2.withValues(alpha: 0.01),
                offset: const Offset(0, 130),
                blurRadius: 52,
              ),
              BoxShadow(
                color: context.appColorScheme.shadowN2.withValues(alpha: 0),
                offset: const Offset(0, 203),
                blurRadius: 57,
              ),
            ],
            borderRadius: BorderRadius.circular(8.w),
          ),
          padding: EdgeInsets.all(16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                image,
                width: 40.w,
                height: 40.w,
                fit: BoxFit.fitWidth,
              ),
              Gap(24.w),
              Expanded(
                child: AutoSizeText(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: context.appTextTheme.subTitleS1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
