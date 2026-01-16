import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:clean_starter/src/ui/screens/dashboard/components/bottom_nav_item.dart';
import 'package:clean_starter/src/ui/widgets/custom_bottom_modal_sheet/create_note_bottom_sheet.dart';
import 'package:clean_starter/src/ui/widgets/custom_bottom_modal_sheet/custom_bottom_modal_sheet.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  final void Function(int index) onTap;
  final int currentIndex;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final AutoSizeGroup group = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.appColorScheme.fillMain,
        boxShadow: [
          BoxShadow(
            color: context.appColorScheme.baseBlack.withValues(alpha: 0.1),
            offset: const Offset(0, -2),
            blurRadius: 24,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: BottomNavItem(
              title: context.l10n.home,
              group: group,
              onTap: () => widget.onTap(0),
              isSelected: widget.currentIndex == 0,
              image: SvgAssets.home,
            ),
          ),
          // Create Icon Button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: GestureDetector(
              onTap: () {
                CustomBottomModalSheet.open(
                  context,
                  const CreateNoteBottomSheet(),
                );
              },
              child: Container(
                width: 56.w,
                height: 56.w,
                decoration: BoxDecoration(
                  color: context.appColorScheme.brandPrimary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: context.appColorScheme.brandPrimary
                          .withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.add,
                  color: context.appColorScheme.baseWhite,
                  size: 28.w,
                ),
              ),
            ),
          ),
          Expanded(
            child: BottomNavItem(
              title: context.l10n.profile,
              group: group,
              onTap: () => widget.onTap(1),
              isSelected: widget.currentIndex == 1,
              image: SvgAssets.profile,
            ),
          ),
        ],
      ),
    );
  }
}
