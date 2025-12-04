import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
    required this.image,
    required this.group,
  });

  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  final String image;
  final AutoSizeGroup group;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 2,
              width: 20.w,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isSelected
                      ? context.appColorScheme.brandPrimary
                      : Colors.transparent,
                  borderRadius: const BorderRadius.all(Radius.circular(360)),
                ),
              ),
            ),
            const Gap(8),
            SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                isSelected
                    ? context.appColorScheme.brandPrimary
                    : context.appColorScheme.iconSecondaryLight,
                BlendMode.srcIn,
              ),
            ),
            const Gap(8),
            AutoSizeText(
              title,
              minFontSize: 10,
              maxLines: 1,
              style: context.appTextTheme.subTitleS2.copyWith(
                color: isSelected
                    ? context.appColorScheme.brandPrimary
                    : context.appColorScheme.textSecondaryLight,
              ),
            ),
            const Gap(8),
          ],
        ),
      ),
    );
  }
}
