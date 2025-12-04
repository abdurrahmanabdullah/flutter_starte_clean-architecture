import 'package:clean_starter/src/ui/default_imports.dart';

import 'components/components.dart';

class LoginLandscapeView extends StatefulWidget {
  const LoginLandscapeView({super.key});

  @override
  State<LoginLandscapeView> createState() => _LoginLandscapeViewState();
}

class _LoginLandscapeViewState extends State<LoginLandscapeView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Gap(MediaQuery.paddingOf(context).top),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Center(child: const LoginWelcomeText()),
                ),
                Gap(10.w),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Form(key: _formKey, child: const LoginForm()),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
