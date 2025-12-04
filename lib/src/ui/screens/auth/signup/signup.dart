import 'package:clean_starter/src/ui/default_imports.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScaffold(
      backgroundColor: context.appColorScheme.fillMain,
      body: Center(child: Text("Signup Screen")),
    );
  }
}
