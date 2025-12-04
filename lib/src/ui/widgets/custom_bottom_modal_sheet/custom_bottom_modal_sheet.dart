import 'package:clean_starter/src/ui/default_imports.dart';

class CustomBottomModalSheet {
  static Future<T?> open<T>(
    BuildContext context,
    Widget child, {
    double? maxHeight,
    double? minHeight,
    double? borderRadius,
  }) async {
    return await showModalBottomSheet<T>(
      context: context,
      useRootNavigator: true,
      constraints: BoxConstraints(
        maxHeight: maxHeight ?? MediaQuery.sizeOf(context).height * 0.8,
        minHeight: maxHeight ?? MediaQuery.sizeOf(context).height * 0.8,
      ),
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius ?? 16.r),
          topRight: Radius.circular(borderRadius ?? 16.r),
        ),
      ),
      barrierColor: context.appColorScheme.bottomSheetBackground,
      builder: (context) {
        return Material(color: Colors.transparent, child: child);
      },
    );
  }
}
