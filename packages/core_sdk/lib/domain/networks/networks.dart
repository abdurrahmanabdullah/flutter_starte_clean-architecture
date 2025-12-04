import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/networks/network.dart';

abstract class Networks {
  static void bindNetworks(Networks networks) {
    DomainGetIt.shared.registerSingleton<AuthNetwork>(
      networks.getAuthNetwork(),
    );
    DomainGetIt.shared.registerSingleton<ProfileNetwork>(
      networks.getProfileNetwork(),
    );
    DomainGetIt.shared.registerSingleton<NotificationNetwork>(
      networks.getNotificationNetwork(),
    );
    DomainGetIt.shared.registerSingleton<PaginatedPostsNetwork>(
      networks.getPaginatedPostsNetwork(),
    );
  }

  AuthNetwork getAuthNetwork();

  ProfileNetwork getProfileNetwork();

  NotificationNetwork getNotificationNetwork();

  PaginatedPostsNetwork getPaginatedPostsNetwork();
}
