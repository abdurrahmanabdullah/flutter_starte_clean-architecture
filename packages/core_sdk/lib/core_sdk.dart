library;

import 'package:core_sdk/domain/domain_get_it.dart';

import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/use_cases/base_use_case.dart';

export 'package:injectable/injectable.dart';

export 'domain/domain.dart';

class CoreSdk {
  static CoreSdk? _instance;

  static CoreSdk get shared {
    if (_instance == null) {
      throw Exception('core Sdk not initialized');
    }
    return _instance!;
  }

  static CoreSdk initialize({
    required Networks networks,
    required Repositories repositories,
  }) {
    if (_instance != null) {
      throw Exception('core Sdk already initialized');
    }
    _instance = CoreSdk._(networks: networks, repositories: repositories);
    return _instance!;
  }

  CoreSdk._({required Networks networks, required Repositories repositories}) {
    DomainGetIt.initialize();
    Networks.bindNetworks(networks);
    Repositories.bindRepositories(repositories);
  }

  T getUseCase<T extends BaseUseCase>() => DomainGetIt.shared.get();
}
