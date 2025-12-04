// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_sdk/core_sdk.dart' as _i699;
import 'package:core_sdk/domain/networks/network.dart' as _i946;
import 'package:core_sdk/domain/networks/networks.dart' as _i914;
import 'package:core_sdk/domain/networks/notification_network.dart' as _i435;
import 'package:core_sdk/domain/repositories/auth_repository.dart' as _i301;
import 'package:core_sdk/domain/repositories/profile_repository.dart' as _i298;
import 'package:core_sdk_impl/src/apis/auth/access_token/access_token_api.dart'
    as _i274;
import 'package:core_sdk_impl/src/apis/auth/login/login_api.dart' as _i549;
import 'package:core_sdk_impl/src/apis/notification_api/notification_api.dart'
    as _i331;
import 'package:core_sdk_impl/src/apis/paginated_posts/paginated_posts_api.dart'
    as _i214;
import 'package:core_sdk_impl/src/apis/profile_api/profile_api.dart' as _i801;
import 'package:core_sdk_impl/src/database/daos/impl/login_dao_impl.dart'
    as _i575;
import 'package:core_sdk_impl/src/database/daos/impl/profile_dao_impl.dart'
    as _i16;
import 'package:core_sdk_impl/src/database/daos/login_dao.dart' as _i853;
import 'package:core_sdk_impl/src/database/daos/profile_dao.dart' as _i540;
import 'package:core_sdk_impl/src/networks/auth_network_impl.dart' as _i518;
import 'package:core_sdk_impl/src/networks/network_impl.dart' as _i620;
import 'package:core_sdk_impl/src/networks/notification_network_impl.dart'
    as _i123;
import 'package:core_sdk_impl/src/networks/paginated_posts_network_impl.dart'
    as _i957;
import 'package:core_sdk_impl/src/networks/profile_network_impl.dart' as _i235;
import 'package:core_sdk_impl/src/repositories/auth_repository_impl.dart'
    as _i146;
import 'package:core_sdk_impl/src/repositories/profile_repository_impl.dart'
    as _i972;
import 'package:core_sdk_impl/src/repositories/repositories_impl.dart' as _i366;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i274.AccessTokenApi>(() => _i274.AccessTokenApi());
    gh.singleton<_i549.LoginApi>(() => _i549.LoginApi());
    gh.singleton<_i331.NotificationApi>(() => _i331.NotificationApi());
    gh.singleton<_i214.PaginatedPostsApi>(() => _i214.PaginatedPostsApi());
    gh.singleton<_i801.ProfileApi>(() => _i801.ProfileApi());
    gh.singleton<_i540.ProfileDao>(() => _i16.ProfileDaoImpl());
    gh.singleton<_i435.NotificationNetwork>(
      () => _i123.NotificationNetworkImpl(),
    );
    gh.singleton<_i946.PaginatedPostsNetwork>(
      () => _i957.PaginatedPostsNetworkImpl(),
    );
    gh.singleton<_i853.LoginDao>(() => _i575.LoginDaoImpl());
    gh.singleton<_i301.AuthRepository>(() => _i146.AuthRepositoryImpl());
    gh.singleton<_i946.AuthNetwork>(() => _i518.AuthNetworkImpl());
    gh.singleton<_i946.ProfileNetwork>(() => _i235.ProfileNetworkImpl());
    gh.singleton<_i298.ProfileRepository>(() => _i972.ProfileRepositoryImpl());
    gh.singleton<_i699.Repositories>(() => _i366.RepositoriesImpl());
    gh.singleton<_i914.Networks>(() => _i620.NetworksImpl());
    return this;
  }
}
