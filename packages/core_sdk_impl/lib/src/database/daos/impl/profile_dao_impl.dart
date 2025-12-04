import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/domain/models/profile/models.dart';
import 'package:core_sdk_impl/src/database/daos/profile_dao.dart';
import 'package:core_sdk_impl/src/database/database.dart';
import 'package:core_sdk_impl/src/database/entities/entities.dart';
import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';
import 'package:isar_e2m/isar_m2e.dart';

@Singleton(as: ProfileDao)
class ProfileDaoImpl
    extends BaseNoSqlDaoImpl<ProfileResponseModel, ProfileEntity, int>
    implements ProfileDao {
  ProfileDaoImpl();

  @override
  IsarCollection<ProfileEntity> get entityCollection =>
      Database.shared.db.profile;

  @override
  Optional<ProfileEntity> convertToEntity(ProfileResponseModel? model) {
    if (model == null) {
      return Optional.empty();
    }
    return Optional.ofNullable(ProfileEntity.fromModel(model));
  }

  @override
  Optional<ProfileResponseModel> convertToModel(ProfileEntity? entity) =>
      Optional.ofNullable(entity?.toModel());

  @override
  QueryBuilder<ProfileEntity, ProfileEntity, QAfterWhereClause> idEqual(
    QueryBuilder<ProfileEntity, ProfileEntity, QWhereClause> queryBuilder,
    int value,
  ) => queryBuilder.tempIdEqualTo(value);

  @override
  int idFromModel(ProfileResponseModel model) => DbConstants.singletonId;
}
