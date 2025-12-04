import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/extensions/date_time_extension.dart';
import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:core_sdk/core_sdk.dart';

class NotificationCard extends StatelessWidget {
  final NotificationResponseModel data;

  const NotificationCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: context.appColorScheme.iconPrimaryAlt,
        boxShadow: [
          BoxShadow(
            color: context.appColorScheme.shadowM.withValues(alpha: 0.04),
            offset: const Offset(0, 0),
            blurRadius: 8,
          ),
          BoxShadow(
            color: context.appColorScheme.shadowM.withValues(alpha: 0.03),
            offset: const Offset(0, 12),
            blurRadius: 20,
          ),
        ],
        borderRadius: BorderRadius.circular(8.w),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              color: context.appColorScheme.fillGray2,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              SvgAssets.bell,
              width: 24.w,
              fit: BoxFit.fitWidth,
            ),
          ),
          Gap(16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  data.name,
                  overflow: TextOverflow.ellipsis,
                  style: context.appTextTheme.subTitleS1,
                ),
                AutoSizeText(
                  "${data.city}, ${data.country} (${data.iata})",
                  overflow: TextOverflow.ellipsis,
                  style: context.appTextTheme.bodyP2,
                ),
              ],
            ),
          ),
          Gap(8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AutoSizeText(
                DateTime.now().toWeekDayMonthDate().toString() +
                    DateTime.now().toTime().toString(),
                overflow: TextOverflow.ellipsis,
                style: context.appTextTheme.bodyP3.copyWith(
                  color: context.appColorScheme.textSecondaryThine,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
