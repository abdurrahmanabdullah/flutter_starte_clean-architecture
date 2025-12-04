import 'package:common_sdk/common_sdk.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'data_get_it.config.dart';

@InjectableInit(initializerName: 'init')
void configureSdkImplDependencies(GetIt getIt) => getIt.init();

class DataGetIt extends BaseGetIt {
  static DataGetIt? _instance;

  static bool get initialized => _instance != null;

  static DataGetIt get shared {
    if (_instance != null) return _instance!;
    throw Exception("DataGetIt not initialized");
  }

  static DataGetIt initialize() {
    if (!initialized) {
      _instance = DataGetIt._();
    }
    return _instance!;
  }

  DataGetIt._();

  @override
  void configureDependencies(GetIt getIt) {
    configureSdkImplDependencies(getIt);
  }
}
