import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';

class PickAttachment extends StatelessWidget {
  final VoidCallback? onTap;
  final String? fileName;

  const PickAttachment({super.key, this.onTap, this.fileName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: context.appColorScheme.baseWhite,
        borderRadius: BorderRadius.circular(6.w),
        border: Border.all(
          width: 1.w,
          color: context.appColorScheme.strokeLight,
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6.w),
              bottomLeft: Radius.circular(6.w),
            ),
            child: Container(
              height: 46.w,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                color: context.appColorScheme.fillGray2,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6.w),
                  bottomLeft: Radius.circular(6.w),
                ),
              ),
              alignment: Alignment.center,
              child: AutoSizeText(
                context.l10n.chooseFile,
                minFontSize: 12,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          AutoSizeText(
            fileName ?? "",
            minFontSize: 12,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
