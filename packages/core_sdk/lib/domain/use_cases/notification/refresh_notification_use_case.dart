import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/networks/notification_network.dart';
import 'package:core_sdk/domain/use_cases/base_use_case.dart';
import 'package:injectable/injectable.dart';

@singleton
class RefreshNotificationListUseCase extends BaseUseCase {
  NotificationNetwork get _network => DomainGetIt.shared.get();

  RefreshNotificationListUseCase();

  Future<Either<FailureModel, List<NotificationResponseModel>>> call() async =>
      _network.getNotificationData();
}
