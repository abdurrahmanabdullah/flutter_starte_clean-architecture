import 'package:clean_starter/src/ui/default_imports.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key,
    this.padding = const EdgeInsets.all(16),
    this.margin = const EdgeInsets.all(0),
    this.borderRadius = 12,
    this.boxShadowAlpha = 0.08,
    required this.child,
  });

  final EdgeInsets padding;
  final EdgeInsets margin;
  final double borderRadius;
  final double boxShadowAlpha;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding.w,
      margin: margin.w,
      decoration: BoxDecoration(
        color: context.appColorScheme.baseWhite,
        borderRadius: BorderRadius.circular(borderRadius.w),
        boxShadow: [
          BoxShadow(
            color: context.appColorScheme.shadowM.withValues(
              alpha: boxShadowAlpha,
            ),
            offset: const Offset(0, 0),
            blurRadius: 8.w,
            spreadRadius: -2,
          ),
          BoxShadow(
            color: context.appColorScheme.shadowM.withValues(
              alpha: boxShadowAlpha,
            ),
            offset: const Offset(0, 12),
            blurRadius: 20.w,
            spreadRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}
