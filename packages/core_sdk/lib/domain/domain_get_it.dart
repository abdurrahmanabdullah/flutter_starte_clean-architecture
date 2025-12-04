import 'package:common_sdk/common_sdk.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:core_sdk/domain/domain_get_it.config.dart';

@InjectableInit(initializerName: 'init')
void configureDomainDependencies(GetIt getIt) => getIt.init();

class DomainGetIt extends BaseGetIt {
  static DomainGetIt? _instance;

  static bool get initialized => _instance != null;

  static DomainGetIt get shared {
    if (_instance != null) return _instance!;
    throw Exception("DomainGetIt not initialized");
  }

  static DomainGetIt initialize() {
    if (!initialized) {
      _instance = DomainGetIt._();
    }
    return _instance!;
  }

  DomainGetIt._();

  @override
  void configureDependencies(GetIt getIt) {
    configureDomainDependencies(getIt);
  }
}
