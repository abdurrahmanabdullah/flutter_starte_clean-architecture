part of '../profile_api/profile_api.dart';

@JsonSerializable(explicitToJson: true)
class ProfileResponse {
  @JsonKey(name: "data")
  final ProfileData? data;

  const ProfileResponse({required this.data});

  ProfileResponseModel toModel() {
    if (data == null) {
      throw Exception("User profile data is null");
    }
    return data!.toModel();
  }

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProfileData {
  final int? id;
  final String? username;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? gender;
  final String? image;

  const ProfileData({
    required this.id,
    this.username,
    required this.email,
    this.firstName,
    this.lastName,
    this.gender,
    this.image,
  });

  ProfileResponseModel toModel() {
    return ProfileResponseModel(
      id: id ?? 0,
      username: username ?? '',
      email: email ?? '',
      firstName: firstName ?? '',
      lastName: lastName ?? '',
      gender: gender ?? '',
      image: image ?? '',
    );
  }

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDataToJson(this);
}
