import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/domain/networks/notification_network.dart';
import 'package:core_sdk_impl/src/apis/notification_api/notification_api.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';

@Singleton(as: NotificationNetwork)
class NotificationNetworkImpl implements NotificationNetwork {
  @override
  Future<Either<FailureModel, List<NotificationResponseModel>>>
  getNotificationData() => DataGetIt.shared.get<NotificationApi>().call();
}
