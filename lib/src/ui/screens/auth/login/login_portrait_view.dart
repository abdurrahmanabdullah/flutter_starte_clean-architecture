import 'package:clean_starter/src/ui/default_imports.dart';

import 'components/components.dart';

class LoginPortraitView extends StatefulWidget {
  const LoginPortraitView({super.key});

  @override
  State<LoginPortraitView> createState() => _LoginPortraitViewState();
}

class _LoginPortraitViewState extends State<LoginPortraitView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return HomeScaffold(
      backgroundColor: context.appColorScheme.fillMain,
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Gap(kToolbarHeight),
                  const LoginWelcomeText(),
                  Gap(24.h),
                  const LoginForm(),
                  Gap(16.h),
                  LoginButton(formKey: _formKey),
                  Gap(16.h),
                  SignUpRow(),
                  Gap(30.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
