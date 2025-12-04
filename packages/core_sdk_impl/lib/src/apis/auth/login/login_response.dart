part of 'login_api.dart';

@JsonSerializable(explicitToJson: true)
class LoginResponse {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;
  final String accessToken;
  final String refreshToken;
  final String? role;

  const LoginResponse({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
    required this.accessToken,
    required this.refreshToken,
    required this.role,
  });

  LoginResponseModel toModel() {
    final now = DateTime.now();
    final tokenExpiry = now.add(const Duration(hours: 1));
    final refreshTokenExpiry = now.add(const Duration(days: 30));

    return LoginResponseModel(
      username: username,
      gender: gender,
      accessToken: accessToken,
      tokenCreationTime: now,
      tokenExpiryTime: tokenExpiry,
      refreshToken: refreshToken,
      refreshTokenCreationTime: now,
      refreshTokenExpiryTime: refreshTokenExpiry,
      email: email,
      firstName: firstName,
      lastName: lastName,
      id: id,
      image: image,
      role: role ?? '',
    );
  }

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
