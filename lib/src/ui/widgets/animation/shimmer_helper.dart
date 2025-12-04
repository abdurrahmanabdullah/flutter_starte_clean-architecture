import 'package:clean_starter/src/extensions/theme_extension.dart';
import 'package:common_sdk/common_sdk.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ShimmerHelper {
  static Widget shimmerContainer({
    double? width,
    double? height,
    double borderRadius = 8.0,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    Color? color,
    bool isCircle = false,
  }) {
    return Shimmer(
      duration: const Duration(seconds: 2),
      interval: const Duration(seconds: 0),
      color: color ?? ContextHolder.currentContext.appColorScheme.fillGray1,
      colorOpacity: 0.3,
      enabled: true,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 16,
        padding: padding,
        decoration: BoxDecoration(
          color: color ?? Colors.grey.shade300,
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isCircle ? null : BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }

  static Widget shimmerList({
    required int itemCount,
    double spacing = 16.0,
    double height = 16.0,
    double borderRadius = 8.0,
    bool isCircle = false,
  }) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      separatorBuilder: (_, _) => SizedBox(height: spacing),
      itemBuilder: (_, _) => shimmerContainer(
        height: height,
        borderRadius: borderRadius,
        isCircle: isCircle,
      ),
    );
  }
}
