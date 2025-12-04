import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';

class NoDataCard extends StatelessWidget {
  const NoDataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(SvgAssets.noData),
          Gap(15.w),
          AutoSizeText(
            context.l10n.looksEmptyHere,
            overflow: TextOverflow.ellipsis,
            style: context.appTextTheme.bodyP2.copyWith(
              color: context.appColorScheme.textSecondaryLight,
            ),
          ),
        ],
      ),
    );
  }
}
