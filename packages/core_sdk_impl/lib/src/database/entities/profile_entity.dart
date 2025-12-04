part of 'entities.dart';

@Collection(accessor: 'profile')
class ProfileEntity extends BaseNoSqlEntity {
  @Index(unique: true)
  String id = '';
  String value = '';

  ProfileEntity();

  factory ProfileEntity.empty() => ProfileEntity();

  factory ProfileEntity.fromModel(ProfileResponseModel model) {
    final entity = ProfileEntity();
    entity.value = json.encode(model.toJson());
    return entity;
  }

  ProfileResponseModel toModel() {
    if (value.isEmpty) return const ProfileResponseModel();
    return ProfileResponseModel.fromJson(json.decode(value));
  }
}
