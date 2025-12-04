part of 'models.dart';

@JsonSerializable()
class IdRequest extends BaseJson {
  final String id;

  IdRequest({required this.id});

  factory IdRequest.fromJson(Map<String, dynamic> json) =>
      _$IdRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IdRequestToJson(this);
}
