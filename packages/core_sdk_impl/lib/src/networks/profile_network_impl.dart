import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/domain/networks/network.dart';
import 'package:core_sdk_impl/src/apis/profile_api/profile_api.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';

@Singleton(as: ProfileNetwork)
class ProfileNetworkImpl implements ProfileNetwork {
  @override
  Future<Either<FailureModel, ProfileResponseModel>> getProfileData() =>
      DataGetIt.shared.get<ProfileApi>().call();
}
