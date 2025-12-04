part of 'models.dart';

@JsonSerializable()
class PaginationRequest extends BaseJson {
  final int pageNumber;
  final int pageSize;
  PaginationRequest({required this.pageNumber, required this.pageSize});

  factory PaginationRequest.fromJson(Map<String, dynamic> json) =>
      _$PaginationRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaginationRequestToJson(this);
}
