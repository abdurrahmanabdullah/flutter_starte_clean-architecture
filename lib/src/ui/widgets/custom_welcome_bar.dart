import 'package:auto_size_text/auto_size_text.dart';

import '../default_imports.dart';

class CustomWelcomeBar extends StatelessWidget {
  const CustomWelcomeBar({
    super.key,
    required this.message,
    this.imageUrl,
    this.isLoading = false,
    this.fallbackIcon,
  });

  final String message;
  final String? imageUrl;
  final bool isLoading;
  final String? fallbackIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildAvatar(context),
        Gap(10.w),
        AutoSizeText(
          message,
          style: context.appTextTheme.titleT3.copyWith(
            color: context.appColorScheme.baseBlack,
          ),
        ),
      ],
    );
  }

  Widget _buildAvatar(BuildContext context) {
    const size = 45.0;

    if (isLoading) {
      return Container(
        width: size.w,
        height: size.w,
        padding: EdgeInsets.all(10.w),
        child: CircularProgressIndicator.adaptive(strokeWidth: 2),
      );
    }

    if (imageUrl != null && imageUrl!.isNotEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(size / 2),
        child: Image.network(
          imageUrl!,
          width: size.w,
          height: size.w,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return _buildFallbackIcon(size);
          },
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return SizedBox(
              width: size.w,
              height: size.w,
              child: CircularProgressIndicator.adaptive(
                strokeWidth: 2,
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
        ),
      );
    }

    return _buildFallbackIcon(size);
  }

  Widget _buildFallbackIcon(double size) {
    return SvgPicture.asset(
      fallbackIcon ?? SvgAssets.profile,
      width: size.w,
      height: size.w,
      fit: BoxFit.contain,
    );
  }
}
