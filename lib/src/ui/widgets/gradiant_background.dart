import 'package:clean_starter/src/ui/default_imports.dart';

class GradiantBackground extends StatelessWidget {
  const GradiantBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              context.appColorScheme.baseBlack,
              context.appColorScheme.baseWhite,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
