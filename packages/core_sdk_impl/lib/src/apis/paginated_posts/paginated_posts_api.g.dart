// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_posts_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedPostsResponse _$PaginatedPostsResponseFromJson(
  Map<String, dynamic> json,
) => PaginatedPostsResponse(
  totalRecords: (json['total'] as num?)?.toInt() ?? 0,
  skip: (json['skip'] as num?)?.toInt() ?? 0,
  currentPageNumber: (json['currentPageNumber'] as num?)?.toInt(),
  pageSize: (json['limit'] as num?)?.toInt() ?? 0,
  totalPages: (json['totalPages'] as num?)?.toInt(),
  hasNextPage: json['hasNextPage'] as bool?,
  hasPreviousPage: json['hasPreviousPage'] as bool?,
  data:
      (json['posts'] as List<dynamic>?)
          ?.map((e) => PaginatedPostsData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  grandTotal: (json['grandTotal'] as num?)?.toInt(),
  isSuccess: json['isSuccess'] as bool?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$PaginatedPostsResponseToJson(
  PaginatedPostsResponse instance,
) => <String, dynamic>{
  'posts': instance.data.map((e) => e.toJson()).toList(),
  'total': instance.totalRecords,
  'skip': instance.skip,
  'limit': instance.pageSize,
  'currentPageNumber': instance.currentPageNumber,
  'totalPages': instance.totalPages,
  'hasNextPage': instance.hasNextPage,
  'hasPreviousPage': instance.hasPreviousPage,
  'grandTotal': instance.grandTotal,
  'isSuccess': instance.isSuccess,
  'message': instance.message,
};

PaginatedPostsData _$PaginatedPostsDataFromJson(
  Map<String, dynamic> json,
) => PaginatedPostsData(
  id: (json['id'] as num?)?.toInt() ?? 1,
  title: json['title'] as String? ?? '',
  body: json['body'] as String? ?? '',
  reactions: ReactionsData.fromJson(json['reactions'] as Map<String, dynamic>),
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  userId: (json['userId'] as num?)?.toInt() ?? 0,
  views: (json['views'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$PaginatedPostsDataToJson(PaginatedPostsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'tags': instance.tags,
      'views': instance.views,
      'userId': instance.userId,
      'reactions': instance.reactions.toJson(),
    };

ReactionsData _$ReactionsDataFromJson(Map<String, dynamic> json) =>
    ReactionsData(
      likes: (json['likes'] as num?)?.toInt() ?? 0,
      dislikes: (json['dislikes'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ReactionsDataToJson(ReactionsData instance) =>
    <String, dynamic>{'likes': instance.likes, 'dislikes': instance.dislikes};
