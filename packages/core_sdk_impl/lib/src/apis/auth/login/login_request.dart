part of 'login_api.dart';

@JsonSerializable(explicitToJson: true)
class LoginRequest extends BaseJson {
  @JsonKey(defaultValue: '', name: 'username')
  final String username;
  @JsonKey(defaultValue: '', name: 'password')
  final String password;

  LoginRequest({required this.username, required this.password});

  @override
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  LoginRequestModel toModel() =>
      LoginRequestModel(
        username: username,
        password: password,
      );
}
