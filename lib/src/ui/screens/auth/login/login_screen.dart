import 'package:clean_starter/src/blocs/auth/login_cubit.dart';
import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:clean_starter/src/ui/screens/auth/login/bloc/login_form_cubit.dart';
import 'package:clean_starter/src/ui/screens/auth/login/login_landscape_view.dart';
import 'package:clean_starter/src/ui/screens/auth/login/login_portrait_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends Screen {
  const LoginScreen({super.key});

  @override
  Widget buildViewWrapper({required Widget child}) {
    return _LoginScreen(child: child);
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return const LoginPortraitView();
  }

  @override
  Widget? buildMobileLandscapeView(BuildContext context) {
    return const LoginLandscapeView();
  }
}

class _LoginScreen extends StatelessWidget {
  const _LoginScreen({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginFormCubit()),
        BlocProvider(create: (context) => LoginCubit()),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.appColorScheme.fillGray1,
        body: child,
      ),
    );
  }
}
