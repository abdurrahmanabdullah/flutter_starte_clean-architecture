import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';

abstract class NotificationNetwork {
  Future<Either<FailureModel, List<NotificationResponseModel>>>
  getNotificationData();
}
