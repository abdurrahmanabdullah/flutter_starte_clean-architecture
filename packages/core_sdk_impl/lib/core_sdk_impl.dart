library;

import 'dart:async';

import 'package:core_sdk/domain/networks/networks.dart';
import 'package:core_sdk/domain/repositories/repositories.dart';

import 'src/config/network_config.dart';
import 'src/data_get_it.dart';
import 'src/database/database.dart';

export 'src/config/network_config.dart';

class CoreSdkImpl {
  static CoreSdkImpl? _instance;

  static CoreSdkImpl get shared {
    if (_instance == null) {
      throw Exception('Core Sdk not initialized');
    }
    return _instance!;
  }

  static Future<CoreSdkImpl> initialize({
    required NetworkConfig networkConfig,
  }) async {
    if (_instance != null) {
      throw Exception('Core Sdk Impl already initialized');
    }
    _instance = CoreSdkImpl._(networkConfig: networkConfig);
    await _instance!.init();
    return _instance!;
  }

  CoreSdkImpl._({required NetworkConfig networkConfig}) {
    DataGetIt.initialize();

    DataGetIt.shared.registerSingleton<NetworkConfig>(networkConfig);
  }

  Future<void> init() async => await Database.initialize();

  Networks getNetworks() => DataGetIt.shared.get();

  Repositories getRepositories() => DataGetIt.shared.get();
}
