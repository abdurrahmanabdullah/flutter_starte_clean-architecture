import 'package:clean_starter/src/routes/auth/auth_route.dart';
import 'package:clean_starter/src/ui/default_imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: SvgPicture.asset(SvgAssets.logo)),
    );
  }

  Future<void> goToNext() async {
    await Future.delayed(const Duration(seconds: 1));

    if (!mounted) return; //
    AuthRoutes.goToLoginPage(context);
  }
}
