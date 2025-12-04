import 'package:core_sdk/domain/networks/network.dart';
import 'package:core_sdk/domain/networks/networks.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: Networks)
class NetworksImpl extends Networks {
  @override
  AuthNetwork getAuthNetwork() => DataGetIt.shared.get();

  @override
  ProfileNetwork getProfileNetwork() => DataGetIt.shared.get();

  @override
  NotificationNetwork getNotificationNetwork() => DataGetIt.shared.get();

  @override
  PaginatedPostsNetwork getPaginatedPostsNetwork() => DataGetIt.shared.get();
}
