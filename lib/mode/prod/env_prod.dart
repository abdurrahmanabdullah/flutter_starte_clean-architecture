import 'package:clean_starter/mode/env.dart';
import 'package:core_sdk_impl/core_sdk_impl.dart';

class EnvProd extends Env {
  @override
  bool allowDevMode = false;

  @override
  bool allowSimulator = false;

  @override
  String appStoreId = '';

  @override
  bool useMockNetwork = false;

  @override
  bool enableLogging = false;

  @override
  NetworkConfig networkConfig = NetworkConfig(
    baseUrl: 'https://dummyjson.com/',
    progressiveSearchUrl: 'https://dummyjson.com/',
    remoteConfigUrl: '',
  );
}

void main() => EnvProd();
