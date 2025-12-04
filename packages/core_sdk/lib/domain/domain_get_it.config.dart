// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_sdk/domain/use_cases/auth/login/login.dart' as _i150;
import 'package:core_sdk/domain/use_cases/notification/refresh_notification_use_case.dart'
    as _i108;
import 'package:core_sdk/domain/use_cases/paginated_posts/refresh_paginated_posts_use_case.dart'
    as _i1015;
import 'package:core_sdk/domain/use_cases/profile/get_profile_use_case.dart'
    as _i191;
import 'package:core_sdk/domain/use_cases/profile/refresh_profile_use_case.dart'
    as _i1069;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i150.RefreshLoginUseCase>(() => _i150.RefreshLoginUseCase());
    gh.singleton<_i108.RefreshNotificationListUseCase>(
      () => _i108.RefreshNotificationListUseCase(),
    );
    gh.singleton<_i1015.RefreshPaginatedPostsUseCase>(
      () => _i1015.RefreshPaginatedPostsUseCase(),
    );
    gh.singleton<_i191.GetProfileStreamUseCase>(
      () => _i191.GetProfileStreamUseCase(),
    );
    gh.singleton<_i1069.RefreshProfileUseCase>(
      () => _i1069.RefreshProfileUseCase(),
    );
    return this;
  }
}
