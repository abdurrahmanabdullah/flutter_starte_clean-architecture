import 'package:clean_starter/l10n/app_localizations.dart';
import 'package:clean_starter/src/blocs/app_language/app_language_cubit.dart';
import 'package:clean_starter/src/blocs/app_language/app_language_state.dart';
import 'package:clean_starter/src/blocs/auth/auth_cubit.dart';
import 'package:clean_starter/src/blocs/device_status/device_status_cubit.dart';
import 'package:clean_starter/src/blocs/profile/refresh_profile_cubit.dart';
import 'package:clean_starter/src/routes/routes.dart';
import 'package:clean_starter/src/theme/en/en_light_mode.dart';
import 'package:clean_starter/src/ui/widgets/screen.dart';
import 'package:common_sdk/common_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme/app_theme.dart';

class Application extends StatefulWidget {
  static late Application shared;

  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AppLanguageCubit()),
        BlocProvider(create: (_) => DeviceStatusCubit()..init()),
        BlocProvider(create: (_) => AuthCubit()),
        BlocProvider(create: (_) => RefreshProfileCubit()),
      ],
      child: ScreenUtilInit(
        designSize: Screen.screenSize(context),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (ct, child) {
          var theme = EnLightMode.init(context);
          AppTheme.setTheme(theme);
          return BlocBuilder<AppLanguageCubit, AppLanguageState>(
            builder: (context, lanState) {
              return MaterialApp.router(
                scaffoldMessengerKey: SnackBarHelper.key,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                locale: Locale(lanState.lang.locale),
                debugShowCheckedModeBanner: false,
                title: 'Clean Starter',
                theme: theme.getData(context),
                routerConfig: Routes.create(context.read<AuthCubit>()),
              );
            },
          );
        },
      ),
    );
  }
}
