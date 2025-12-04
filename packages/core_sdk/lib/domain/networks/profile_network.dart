import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/domain/models/common/models.dart';
import 'package:core_sdk/domain/models/profile/models.dart';

abstract class ProfileNetwork {
  Future<Either<FailureModel, ProfileResponseModel>> getProfileData();
}
