part of 'entities.dart';

@Collection(accessor: 'login')
class LoginEntity extends BaseNoSqlSingletonEntity {
  LoginEntity();

  @Index()
  String accessToken = '';
  @Index()
  String refreshToken = '';
  @Index()
  DateTime refreshTokenExpiryTime = DateTime.fromMillisecondsSinceEpoch(0);
  @Index()
  DateTime tokenExpiryTime = DateTime.fromMillisecondsSinceEpoch(0);

  factory LoginEntity.empty() => LoginEntity();

  factory LoginEntity.fromModel(LoginResponseModel model) {
    final entity = LoginEntity();
    entity.accessToken = model.accessToken;
    entity.refreshToken = model.refreshToken;
    entity.refreshTokenExpiryTime = model.refreshTokenExpiryTime;
    entity.tokenExpiryTime = model.tokenExpiryTime;
    entity.value = jsonEncode(model.toJson());
    return entity;
  }

  LoginResponseModel toModel() =>
      LoginResponseModel.fromJson(jsonDecode(value));
}
