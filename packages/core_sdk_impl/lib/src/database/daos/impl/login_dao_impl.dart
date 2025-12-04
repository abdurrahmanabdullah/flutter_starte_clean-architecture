import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/domain/models/auth/login/models.dart';
import 'package:core_sdk_impl/src/database/daos/login_dao.dart';
import 'package:core_sdk_impl/src/database/database.dart';
import 'package:core_sdk_impl/src/database/entities/entities.dart';
import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';
import 'package:isar_e2m/isar_m2e.dart';

@Singleton(as: LoginDao)
class LoginDaoImpl
    extends BaseNoSqlDaoImpl<LoginResponseModel, LoginEntity, int>
    implements LoginDao {
  LoginDaoImpl();

  @override
  IsarCollection<LoginEntity> get entityCollection => Database.shared.db.login;

  @override
  Optional<LoginEntity> convertToEntity(LoginResponseModel? model) {
    if (model == null) {
      return Optional.empty();
    }
    return Optional.ofNullable(LoginEntity.fromModel(model));
  }

  @override
  Optional<LoginResponseModel> convertToModel(LoginEntity? entity) =>
      Optional.ofNullable(entity?.toModel());

  @override
  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause> idEqual(
    QueryBuilder<LoginEntity, LoginEntity, QWhereClause> queryBuilder,
    int value,
  ) => queryBuilder.tempIdEqualTo(value);

  @override
  int idFromModel(LoginResponseModel model) => DbConstants.singletonId;

  @override
  Stream<bool> isLoggedIn() {
    final query = entityCollection
        .where()
        .tokenExpiryTimeGreaterThan(DateTime.now())
        .build();

    final dataListStream = query.watch(fireImmediately: true);

    final boolStream = dataListStream.map((entities) {
      return entities.any((e) => e.accessToken.isNotEmpty);
    });

    return boolStream;
  }
}
