import 'package:clean_starter/src/data/prefs.dart';
import 'package:clean_starter/src/routes/auth/auth_route.dart';
import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:clean_starter/src/ui/widgets/custom_welcome_bar.dart';
import 'package:clean_starter/src/ui/widgets/streams/future_stream_builder.dart';
import 'package:core_sdk/core_sdk.dart';

import '../../../routes/home/home_route.dart';

class CommonAppBar extends StatefulWidget {
  const CommonAppBar({super.key});

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(MediaQuery.paddingOf(context).top),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: SizedBox(
            height: kToolbarHeight,
            child: Row(
              children: [
                Expanded(
                  child: FutureModelStreamBuilder(
                    futureStream: CoreSdk.shared
                        .getUseCase<GetProfileStreamUseCase>()
                        .call(),
                    buildLoading: (context) => const CustomWelcomeBar(
                      message: "Welcome !",
                      isLoading: true,
                    ),
                    buildEmpty: (context) =>
                        const CustomWelcomeBar(message: "User not found !"),
                    buildData: (context, user) => CustomWelcomeBar(
                      message: "Welcome, ${user.firstName} !",
                      imageUrl: user.image,
                    ),
                  ),
                ),
                Gap(8.w),
                _buildLogOutButton(context),
                Gap(8.w),
                _buildNotificationButton(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLogOutButton(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Prefs.shared.clearAll();
          AuthRoutes.goToLoginPage(context);
        },
        borderRadius: BorderRadius.circular(8.w),
        child: SizedBox.square(
          dimension: 40.w,
          child: Ink(
            decoration: BoxDecoration(
              color: context.appColorScheme.fillMain,
              borderRadius: BorderRadius.circular(8.w),
            ),
            child: Center(
              child: Icon(
                Icons.logout_rounded,
                color: context.appColorScheme.statusError,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationButton(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => HomeRoutes.goToNotification(context),
        borderRadius: BorderRadius.circular(8.w),
        child: SizedBox.square(
          dimension: 40.w,
          child: Ink(
            decoration: BoxDecoration(
              color: context.appColorScheme.fillMain,
              borderRadius: BorderRadius.circular(8.w),
            ),
            child: Center(
              child: SvgPicture.asset(
                SvgAssets.bell,
                width: 24.w,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
