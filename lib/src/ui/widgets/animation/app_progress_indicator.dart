import 'package:clean_starter/src/ui/default_imports.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  final double? dimension;

  const AppCircularProgressIndicator({super.key, this.dimension});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension ?? 30.h,
      child: const CircularProgressIndicator.adaptive(),
    );
  }
}
