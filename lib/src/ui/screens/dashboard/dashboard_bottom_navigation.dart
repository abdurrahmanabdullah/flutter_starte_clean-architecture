import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:clean_starter/src/ui/screens/dashboard/components/custom_bottom_navigation_bar.dart';
import 'package:go_router/go_router.dart';

class DashboardBottomNavigation extends Screen {
  const DashboardBottomNavigation({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return HomeScaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      context.appColorScheme.brandSecondary.shade50,
                      context.appColorScheme.baseWhite,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CommonAppBar(),
                Expanded(child: navigationShell),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomBottomNavigationBar(
            onTap: (index) => navigationShell.goBranch(index),
            currentIndex: navigationShell.currentIndex,
          ),
          Gap(MediaQuery.of(context).viewPadding.bottom),
        ],
      ),
    );
  }
}
