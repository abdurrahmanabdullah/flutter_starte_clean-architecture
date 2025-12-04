part of 'models.dart';

@freezed
sealed class LoginRequestModel with _$LoginRequestModel {
  const factory LoginRequestModel({
    @Default('') String username,
    @Default('') String password,
  }) = _LoginRequestModel;

  factory LoginRequestModel.empty() => const LoginRequestModel();

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
}

/*

@JsonSerializable()
class LoginRequestModel {
  final String username;
  final String password;

  const LoginRequestModel({required this.username, required this.password});

  factory LoginRequestModel.empty() =>
      const LoginRequestModel(username: '', password: '');

  LoginRequestModel copyWith({String? username, String? password}) {
    return LoginRequestModel(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}
*/
