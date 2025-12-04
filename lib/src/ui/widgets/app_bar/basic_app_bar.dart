import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackPressed;
  final VoidCallback? onSearchPressed;
  final List<Widget> actions;
  final BasicAppBarController? controller;

  const BasicAppBar({
    super.key,
    required this.title,
    required this.controller,
    this.onBackPressed,
    this.onSearchPressed,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller!,
      builder: (context, _) {
        return Container(
          color: context.appColorScheme.fillBrandPrimary,
          child: Column(
            children: [
              Gap(MediaQuery.paddingOf(context).top),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.w),
                child: SizedBox(
                  height: kToolbarHeight,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: onBackPressed ?? () => Navigator.pop(context),
                        child: SvgPicture.asset(
                          SvgAssets.appbarBack,
                          width: 40.w,
                          height: 40.w,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Gap(8.w),
                      Expanded(
                        child: Center(
                          child: controller!.isSearching
                              ? TextField(
                                  controller: controller?.searchController,
                                  focusNode: controller?.searchFocusNode,
                                  decoration: InputDecoration(
                                    hintText: context.l10n.search,
                                    border: InputBorder.none,
                                    hintStyle: context.appTextTheme.titleT3
                                        .copyWith(
                                          color:
                                              context.appColorScheme.baseWhite,
                                        ),
                                  ),
                                  style: context.appTextTheme.titleT2.copyWith(
                                    color: context.appColorScheme.baseWhite,
                                  ),
                                )
                              : AutoSizeText(
                                  title,
                                  textAlign: TextAlign.center,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.appTextTheme.titleT2.copyWith(
                                    color: context.appColorScheme.baseWhite,
                                  ),
                                ),
                        ),
                      ),

                      Gap(8.w),

                      /// Search Button
                      GestureDetector(
                        onTap: () {
                          controller?.toggleSearch();
                          onSearchPressed?.call();
                        },
                        child: SvgPicture.asset(
                          SvgAssets.appbarSearch,
                          width: 40.w,
                          height: 40.w,
                          fit: BoxFit.fitWidth,
                        ),
                      ),

                      ...actions,
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
