import 'dart:async';

import 'package:clean_starter/src/application.dart';
import 'package:clean_starter/src/bootstrap.dart';
import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk_impl/core_sdk_impl.dart';
import 'package:flutter/material.dart';

abstract class Env {
  static late Env shared;
  abstract bool allowSimulator;
  abstract bool allowDevMode;
  abstract bool enableLogging;
  abstract bool useMockNetwork;
  abstract NetworkConfig networkConfig;
  late Future initSdksFuture;
  bool initialized = false;

  abstract String appStoreId;

  Env() {
    shared = this;
    init();
  }

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    CommonSdk.initialize(enableLogging: Env.shared.enableLogging);
    await CoreSdkImpl.initialize(networkConfig: Env.shared.networkConfig);
    CoreSdk.initialize(
      networks: CoreSdkImpl.shared.getNetworks(),
      repositories: CoreSdkImpl.shared.getRepositories(),
    );

    startApp();
  }

  Future<void> startApp() async {
    bootstrap(() => const Application());
  }
}
