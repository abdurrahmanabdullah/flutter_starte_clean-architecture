part of 'paginated_posts_api.dart';

@JsonSerializable(explicitToJson: true)
class PaginatedPostsResponse extends BaseJson {
  @JsonKey(name: "posts", defaultValue: [])
  final List<PaginatedPostsData> data;

  @JsonKey(name: "total", defaultValue: 0)
  final int totalRecords;

  @JsonKey(name: "skip", defaultValue: 0)
  final int skip;

  @JsonKey(name: "limit", defaultValue: 0)
  final int pageSize;

  @JsonKey(name: "currentPageNumber", defaultValue: null)
  final int? currentPageNumber;

  @JsonKey(name: "totalPages", defaultValue: null)
  final int? totalPages;

  @JsonKey(name: "hasNextPage", defaultValue: null)
  final bool? hasNextPage;

  @JsonKey(name: "hasPreviousPage", defaultValue: null)
  final bool? hasPreviousPage;

  @JsonKey(name: "grandTotal", defaultValue: null)
  final int? grandTotal;

  @JsonKey(name: "isSuccess", defaultValue: null)
  final bool? isSuccess;

  @JsonKey(name: "message", defaultValue: null)
  final String? message;

  PaginatedPostsResponse({
    required this.totalRecords,
    required this.skip,
    required this.currentPageNumber,
    required this.pageSize,
    required this.totalPages,
    required this.hasNextPage,
    required this.hasPreviousPage,
    required this.data,
    required this.grandTotal,
    required this.isSuccess,
    required this.message,
  });

  factory PaginatedPostsResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginatedPostsResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaginatedPostsResponseToJson(this);

  PaginationListModel<PaginatedPostsResponseModel> toModel() =>
      PaginationListModel(
        data: data.map((e) => e.toModel()).toList(),
        status: PaginationStatusModel(
          currentPage: currentPageNumber ?? _currentPageNumber(),
          hasNextPage: hasNextPage ?? _hasNextPage(),
          isSuccess: isSuccess,
          message: message,
          pageSize: pageSize,
          totalPages: totalPages ?? _totalPages(),
          grandTotal: grandTotal,
          totalRecords: totalRecords,
        ),
      );

  /// Implement rules here based on pagination api response ///
  bool _hasNextPage() {
    return (_totalPages() > _currentPageNumber() &&
        ((pageSize + skip) < totalRecords));
  }

  int _currentPageNumber() {
    return ((skip + pageSize) / pageSize).toInt().ceil();
  }

  int _totalPages() {
    return (totalRecords / pageSize).ceil();
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedPostsData {
  @JsonKey(name: "id", defaultValue: 1)
  final int id;

  @JsonKey(name: "title", defaultValue: "")
  final String title;

  @JsonKey(name: "body", defaultValue: "")
  final String body;

  @JsonKey(name: "tags", defaultValue: [])
  final List<String> tags;

  @JsonKey(name: "views", defaultValue: 0)
  final int views;

  @JsonKey(name: "userId", defaultValue: 0)
  final int userId;

  @JsonKey(name: "reactions", defaultValue: null)
  final ReactionsData reactions;

  PaginatedPostsData({
    required this.id,
    required this.title,
    required this.body,
    required this.reactions,
    required this.tags,
    required this.userId,
    required this.views,
  });

  PaginatedPostsResponseModel toModel() => PaginatedPostsResponseModel(
    id: id,
    title: title,
    body: body,
    views: views,
    userId: userId,
    tags: tags,
    reactions: reactions.toModel(),
  );

  factory PaginatedPostsData.fromJson(Map<String, dynamic> json) =>
      _$PaginatedPostsDataFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedPostsDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReactionsData {
  @JsonKey(name: "likes", defaultValue: 0)
  final int likes;
  @JsonKey(name: "dislikes", defaultValue: 0)
  final int dislikes;

  ReactionsData({required this.likes, required this.dislikes});

  ReactionsModel toModel() => ReactionsModel(dislikes: dislikes, likes: likes);

  factory ReactionsData.fromJson(Map<String, dynamic> json) =>
      _$ReactionsDataFromJson(json);

  Map<String, dynamic> toJson() => _$ReactionsDataToJson(this);
}
