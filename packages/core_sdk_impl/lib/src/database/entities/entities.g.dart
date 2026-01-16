// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLoginEntityCollection on Isar {
  IsarCollection<LoginEntity> get login => this.collection();
}

const LoginEntitySchema = CollectionSchema(
  name: r'LoginEntity',
  id: 7267035506190544142,
  properties: {
    r'accessToken': PropertySchema(
      id: 0,
      name: r'accessToken',
      type: IsarType.string,
    ),
    r'refreshToken': PropertySchema(
      id: 1,
      name: r'refreshToken',
      type: IsarType.string,
    ),
    r'refreshTokenExpiryTime': PropertySchema(
      id: 2,
      name: r'refreshTokenExpiryTime',
      type: IsarType.dateTime,
    ),
    r'tokenExpiryTime': PropertySchema(
      id: 3,
      name: r'tokenExpiryTime',
      type: IsarType.dateTime,
    ),
    r'updatedDateTime': PropertySchema(
      id: 4,
      name: r'updatedDateTime',
      type: IsarType.dateTime,
    ),
    r'value': PropertySchema(id: 5, name: r'value', type: IsarType.string),
  },

  estimateSize: _loginEntityEstimateSize,
  serialize: _loginEntitySerialize,
  deserialize: _loginEntityDeserialize,
  deserializeProp: _loginEntityDeserializeProp,
  idName: r'tempId',
  indexes: {
    r'accessToken': IndexSchema(
      id: 466088616632015958,
      name: r'accessToken',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'accessToken',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
    r'refreshToken': IndexSchema(
      id: 3253082596890847333,
      name: r'refreshToken',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'refreshToken',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
    r'refreshTokenExpiryTime': IndexSchema(
      id: -3234083486983436729,
      name: r'refreshTokenExpiryTime',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'refreshTokenExpiryTime',
          type: IndexType.value,
          caseSensitive: false,
        ),
      ],
    ),
    r'tokenExpiryTime': IndexSchema(
      id: -2808661206381430794,
      name: r'tokenExpiryTime',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'tokenExpiryTime',
          type: IndexType.value,
          caseSensitive: false,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _loginEntityGetId,
  getLinks: _loginEntityGetLinks,
  attach: _loginEntityAttach,
  version: '3.3.0-dev.3',
);

int _loginEntityEstimateSize(
  LoginEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.accessToken.length * 3;
  bytesCount += 3 + object.refreshToken.length * 3;
  bytesCount += 3 + object.value.length * 3;
  return bytesCount;
}

void _loginEntitySerialize(
  LoginEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.accessToken);
  writer.writeString(offsets[1], object.refreshToken);
  writer.writeDateTime(offsets[2], object.refreshTokenExpiryTime);
  writer.writeDateTime(offsets[3], object.tokenExpiryTime);
  writer.writeDateTime(offsets[4], object.updatedDateTime);
  writer.writeString(offsets[5], object.value);
}

LoginEntity _loginEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LoginEntity();
  object.accessToken = reader.readString(offsets[0]);
  object.refreshToken = reader.readString(offsets[1]);
  object.refreshTokenExpiryTime = reader.readDateTime(offsets[2]);
  object.tempId = id;
  object.tokenExpiryTime = reader.readDateTime(offsets[3]);
  object.updatedDateTime = reader.readDateTime(offsets[4]);
  object.value = reader.readString(offsets[5]);
  return object;
}

P _loginEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _loginEntityGetId(LoginEntity object) {
  return object.tempId;
}

List<IsarLinkBase<dynamic>> _loginEntityGetLinks(LoginEntity object) {
  return [];
}

void _loginEntityAttach(
  IsarCollection<dynamic> col,
  Id id,
  LoginEntity object,
) {
  object.tempId = id;
}

extension LoginEntityQueryWhereSort
    on QueryBuilder<LoginEntity, LoginEntity, QWhere> {
  QueryBuilder<LoginEntity, LoginEntity, QAfterWhere> anyTempId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhere>
  anyRefreshTokenExpiryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'refreshTokenExpiryTime'),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhere> anyTokenExpiryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'tokenExpiryTime'),
      );
    });
  }
}

extension LoginEntityQueryWhere
    on QueryBuilder<LoginEntity, LoginEntity, QWhereClause> {
  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause> tempIdEqualTo(
    Id tempId,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(lower: tempId, upper: tempId),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause> tempIdNotEqualTo(
    Id tempId,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: tempId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: tempId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: tempId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: tempId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause> tempIdGreaterThan(
    Id tempId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: tempId, includeLower: include),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause> tempIdLessThan(
    Id tempId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: tempId, includeUpper: include),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause> tempIdBetween(
    Id lowerTempId,
    Id upperTempId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerTempId,
          includeLower: includeLower,
          upper: upperTempId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause> accessTokenEqualTo(
    String accessToken,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'accessToken',
          value: [accessToken],
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause>
  accessTokenNotEqualTo(String accessToken) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'accessToken',
                lower: [],
                upper: [accessToken],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'accessToken',
                lower: [accessToken],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'accessToken',
                lower: [accessToken],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'accessToken',
                lower: [],
                upper: [accessToken],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause> refreshTokenEqualTo(
    String refreshToken,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'refreshToken',
          value: [refreshToken],
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause>
  refreshTokenNotEqualTo(String refreshToken) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'refreshToken',
                lower: [],
                upper: [refreshToken],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'refreshToken',
                lower: [refreshToken],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'refreshToken',
                lower: [refreshToken],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'refreshToken',
                lower: [],
                upper: [refreshToken],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause>
  refreshTokenExpiryTimeEqualTo(DateTime refreshTokenExpiryTime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'refreshTokenExpiryTime',
          value: [refreshTokenExpiryTime],
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause>
  refreshTokenExpiryTimeNotEqualTo(DateTime refreshTokenExpiryTime) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'refreshTokenExpiryTime',
                lower: [],
                upper: [refreshTokenExpiryTime],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'refreshTokenExpiryTime',
                lower: [refreshTokenExpiryTime],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'refreshTokenExpiryTime',
                lower: [refreshTokenExpiryTime],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'refreshTokenExpiryTime',
                lower: [],
                upper: [refreshTokenExpiryTime],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause>
  refreshTokenExpiryTimeGreaterThan(
    DateTime refreshTokenExpiryTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'refreshTokenExpiryTime',
          lower: [refreshTokenExpiryTime],
          includeLower: include,
          upper: [],
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause>
  refreshTokenExpiryTimeLessThan(
    DateTime refreshTokenExpiryTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'refreshTokenExpiryTime',
          lower: [],
          upper: [refreshTokenExpiryTime],
          includeUpper: include,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause>
  refreshTokenExpiryTimeBetween(
    DateTime lowerRefreshTokenExpiryTime,
    DateTime upperRefreshTokenExpiryTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'refreshTokenExpiryTime',
          lower: [lowerRefreshTokenExpiryTime],
          includeLower: includeLower,
          upper: [upperRefreshTokenExpiryTime],
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause>
  tokenExpiryTimeEqualTo(DateTime tokenExpiryTime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'tokenExpiryTime',
          value: [tokenExpiryTime],
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause>
  tokenExpiryTimeNotEqualTo(DateTime tokenExpiryTime) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'tokenExpiryTime',
                lower: [],
                upper: [tokenExpiryTime],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'tokenExpiryTime',
                lower: [tokenExpiryTime],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'tokenExpiryTime',
                lower: [tokenExpiryTime],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'tokenExpiryTime',
                lower: [],
                upper: [tokenExpiryTime],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause>
  tokenExpiryTimeGreaterThan(DateTime tokenExpiryTime, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'tokenExpiryTime',
          lower: [tokenExpiryTime],
          includeLower: include,
          upper: [],
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause>
  tokenExpiryTimeLessThan(DateTime tokenExpiryTime, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'tokenExpiryTime',
          lower: [],
          upper: [tokenExpiryTime],
          includeUpper: include,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterWhereClause>
  tokenExpiryTimeBetween(
    DateTime lowerTokenExpiryTime,
    DateTime upperTokenExpiryTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'tokenExpiryTime',
          lower: [lowerTokenExpiryTime],
          includeLower: includeLower,
          upper: [upperTokenExpiryTime],
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension LoginEntityQueryFilter
    on QueryBuilder<LoginEntity, LoginEntity, QFilterCondition> {
  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  accessTokenEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'accessToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  accessTokenGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'accessToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  accessTokenLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'accessToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  accessTokenBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'accessToken',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  accessTokenStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'accessToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  accessTokenEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'accessToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  accessTokenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'accessToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  accessTokenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'accessToken',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  accessTokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'accessToken', value: ''),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  accessTokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'accessToken', value: ''),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'refreshToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'refreshToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'refreshToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'refreshToken',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'refreshToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'refreshToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'refreshToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'refreshToken',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'refreshToken', value: ''),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'refreshToken', value: ''),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenExpiryTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'refreshTokenExpiryTime',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenExpiryTimeGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'refreshTokenExpiryTime',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenExpiryTimeLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'refreshTokenExpiryTime',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  refreshTokenExpiryTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'refreshTokenExpiryTime',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition> tempIdEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'tempId', value: value),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  tempIdGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'tempId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition> tempIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'tempId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition> tempIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'tempId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  tokenExpiryTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'tokenExpiryTime', value: value),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  tokenExpiryTimeGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'tokenExpiryTime',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  tokenExpiryTimeLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'tokenExpiryTime',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  tokenExpiryTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'tokenExpiryTime',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  updatedDateTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedDateTime', value: value),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  updatedDateTimeGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'updatedDateTime',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  updatedDateTimeLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'updatedDateTime',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  updatedDateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'updatedDateTime',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition> valueEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  valueGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition> valueLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition> valueBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'value',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition> valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition> valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition> valueContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition> valueMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'value',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition> valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'value', value: ''),
      );
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterFilterCondition>
  valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'value', value: ''),
      );
    });
  }
}

extension LoginEntityQueryObject
    on QueryBuilder<LoginEntity, LoginEntity, QFilterCondition> {}

extension LoginEntityQueryLinks
    on QueryBuilder<LoginEntity, LoginEntity, QFilterCondition> {}

extension LoginEntityQuerySortBy
    on QueryBuilder<LoginEntity, LoginEntity, QSortBy> {
  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> sortByAccessToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accessToken', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> sortByAccessTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accessToken', Sort.desc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> sortByRefreshToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refreshToken', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy>
  sortByRefreshTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refreshToken', Sort.desc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy>
  sortByRefreshTokenExpiryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refreshTokenExpiryTime', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy>
  sortByRefreshTokenExpiryTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refreshTokenExpiryTime', Sort.desc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> sortByTokenExpiryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tokenExpiryTime', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy>
  sortByTokenExpiryTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tokenExpiryTime', Sort.desc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> sortByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy>
  sortByUpdatedDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.desc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension LoginEntityQuerySortThenBy
    on QueryBuilder<LoginEntity, LoginEntity, QSortThenBy> {
  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> thenByAccessToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accessToken', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> thenByAccessTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accessToken', Sort.desc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> thenByRefreshToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refreshToken', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy>
  thenByRefreshTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refreshToken', Sort.desc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy>
  thenByRefreshTokenExpiryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refreshTokenExpiryTime', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy>
  thenByRefreshTokenExpiryTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refreshTokenExpiryTime', Sort.desc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> thenByTempId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempId', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> thenByTempIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempId', Sort.desc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> thenByTokenExpiryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tokenExpiryTime', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy>
  thenByTokenExpiryTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tokenExpiryTime', Sort.desc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> thenByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy>
  thenByUpdatedDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.desc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension LoginEntityQueryWhereDistinct
    on QueryBuilder<LoginEntity, LoginEntity, QDistinct> {
  QueryBuilder<LoginEntity, LoginEntity, QDistinct> distinctByAccessToken({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accessToken', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QDistinct> distinctByRefreshToken({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refreshToken', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QDistinct>
  distinctByRefreshTokenExpiryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refreshTokenExpiryTime');
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QDistinct>
  distinctByTokenExpiryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tokenExpiryTime');
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QDistinct>
  distinctByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedDateTime');
    });
  }

  QueryBuilder<LoginEntity, LoginEntity, QDistinct> distinctByValue({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value', caseSensitive: caseSensitive);
    });
  }
}

extension LoginEntityQueryProperty
    on QueryBuilder<LoginEntity, LoginEntity, QQueryProperty> {
  QueryBuilder<LoginEntity, int, QQueryOperations> tempIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tempId');
    });
  }

  QueryBuilder<LoginEntity, String, QQueryOperations> accessTokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accessToken');
    });
  }

  QueryBuilder<LoginEntity, String, QQueryOperations> refreshTokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refreshToken');
    });
  }

  QueryBuilder<LoginEntity, DateTime, QQueryOperations>
  refreshTokenExpiryTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refreshTokenExpiryTime');
    });
  }

  QueryBuilder<LoginEntity, DateTime, QQueryOperations>
  tokenExpiryTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tokenExpiryTime');
    });
  }

  QueryBuilder<LoginEntity, DateTime, QQueryOperations>
  updatedDateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedDateTime');
    });
  }

  QueryBuilder<LoginEntity, String, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNoteEntityCollection on Isar {
  IsarCollection<NoteEntity> get notes => this.collection();
}

const NoteEntitySchema = CollectionSchema(
  name: r'NoteEntity',
  id: -8531409808967742627,
  properties: {
    r'content': PropertySchema(id: 0, name: r'content', type: IsarType.string),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'id': PropertySchema(id: 2, name: r'id', type: IsarType.string),
    r'title': PropertySchema(id: 3, name: r'title', type: IsarType.string),
    r'updatedAt': PropertySchema(
      id: 4,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'updatedDateTime': PropertySchema(
      id: 5,
      name: r'updatedDateTime',
      type: IsarType.dateTime,
    ),
  },

  estimateSize: _noteEntityEstimateSize,
  serialize: _noteEntitySerialize,
  deserialize: _noteEntityDeserialize,
  deserializeProp: _noteEntityDeserializeProp,
  idName: r'tempId',
  indexes: {
    r'id': IndexSchema(
      id: -3268401673993471357,
      name: r'id',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'id',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _noteEntityGetId,
  getLinks: _noteEntityGetLinks,
  attach: _noteEntityAttach,
  version: '3.3.0-dev.3',
);

int _noteEntityEstimateSize(
  NoteEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.content.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _noteEntitySerialize(
  NoteEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.content);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeString(offsets[2], object.id);
  writer.writeString(offsets[3], object.title);
  writer.writeDateTime(offsets[4], object.updatedAt);
  writer.writeDateTime(offsets[5], object.updatedDateTime);
}

NoteEntity _noteEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NoteEntity();
  object.content = reader.readString(offsets[0]);
  object.createdAt = reader.readDateTime(offsets[1]);
  object.id = reader.readString(offsets[2]);
  object.tempId = id;
  object.title = reader.readString(offsets[3]);
  object.updatedAt = reader.readDateTime(offsets[4]);
  object.updatedDateTime = reader.readDateTime(offsets[5]);
  return object;
}

P _noteEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _noteEntityGetId(NoteEntity object) {
  return object.tempId;
}

List<IsarLinkBase<dynamic>> _noteEntityGetLinks(NoteEntity object) {
  return [];
}

void _noteEntityAttach(IsarCollection<dynamic> col, Id id, NoteEntity object) {
  object.tempId = id;
}

extension NoteEntityByIndex on IsarCollection<NoteEntity> {
  Future<NoteEntity?> getById(String id) {
    return getByIndex(r'id', [id]);
  }

  NoteEntity? getByIdSync(String id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(String id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(String id) {
    return deleteByIndexSync(r'id', [id]);
  }

  Future<List<NoteEntity?>> getAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex(r'id', values);
  }

  List<NoteEntity?> getAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'id', values);
  }

  Future<int> deleteAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'id', values);
  }

  int deleteAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'id', values);
  }

  Future<Id> putById(NoteEntity object) {
    return putByIndex(r'id', object);
  }

  Id putByIdSync(NoteEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById(List<NoteEntity> objects) {
    return putAllByIndex(r'id', objects);
  }

  List<Id> putAllByIdSync(List<NoteEntity> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'id', objects, saveLinks: saveLinks);
  }
}

extension NoteEntityQueryWhereSort
    on QueryBuilder<NoteEntity, NoteEntity, QWhere> {
  QueryBuilder<NoteEntity, NoteEntity, QAfterWhere> anyTempId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NoteEntityQueryWhere
    on QueryBuilder<NoteEntity, NoteEntity, QWhereClause> {
  QueryBuilder<NoteEntity, NoteEntity, QAfterWhereClause> tempIdEqualTo(
    Id tempId,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(lower: tempId, upper: tempId),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterWhereClause> tempIdNotEqualTo(
    Id tempId,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: tempId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: tempId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: tempId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: tempId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterWhereClause> tempIdGreaterThan(
    Id tempId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: tempId, includeLower: include),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterWhereClause> tempIdLessThan(
    Id tempId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: tempId, includeUpper: include),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterWhereClause> tempIdBetween(
    Id lowerTempId,
    Id upperTempId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerTempId,
          includeLower: includeLower,
          upper: upperTempId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterWhereClause> idEqualTo(String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'id', value: [id]),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterWhereClause> idNotEqualTo(
    String id,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'id',
                lower: [],
                upper: [id],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'id',
                lower: [id],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'id',
                lower: [id],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'id',
                lower: [],
                upper: [id],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension NoteEntityQueryFilter
    on QueryBuilder<NoteEntity, NoteEntity, QFilterCondition> {
  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'content',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition>
  contentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'content',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> contentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'content',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> contentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'content',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'content',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'content',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> contentContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'content',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> contentMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'content',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'content', value: ''),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition>
  contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'content', value: ''),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> createdAtEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition>
  createdAtGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'createdAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> idContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> idMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'id',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: ''),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'id', value: ''),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> tempIdEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'tempId', value: value),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> tempIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'tempId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> tempIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'tempId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> tempIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'tempId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'title',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> titleContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> titleMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'title',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition>
  titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> updatedAtEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedAt', value: value),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition>
  updatedAtGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'updatedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'updatedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'updatedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition>
  updatedDateTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedDateTime', value: value),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition>
  updatedDateTimeGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'updatedDateTime',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition>
  updatedDateTimeLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'updatedDateTime',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterFilterCondition>
  updatedDateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'updatedDateTime',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension NoteEntityQueryObject
    on QueryBuilder<NoteEntity, NoteEntity, QFilterCondition> {}

extension NoteEntityQueryLinks
    on QueryBuilder<NoteEntity, NoteEntity, QFilterCondition> {}

extension NoteEntityQuerySortBy
    on QueryBuilder<NoteEntity, NoteEntity, QSortBy> {
  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> sortByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> sortByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> sortByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy>
  sortByUpdatedDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.desc);
    });
  }
}

extension NoteEntityQuerySortThenBy
    on QueryBuilder<NoteEntity, NoteEntity, QSortThenBy> {
  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenByTempId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempId', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenByTempIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempId', Sort.desc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy> thenByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.asc);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QAfterSortBy>
  thenByUpdatedDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.desc);
    });
  }
}

extension NoteEntityQueryWhereDistinct
    on QueryBuilder<NoteEntity, NoteEntity, QDistinct> {
  QueryBuilder<NoteEntity, NoteEntity, QDistinct> distinctByContent({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QDistinct> distinctById({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QDistinct> distinctByTitle({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<NoteEntity, NoteEntity, QDistinct> distinctByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedDateTime');
    });
  }
}

extension NoteEntityQueryProperty
    on QueryBuilder<NoteEntity, NoteEntity, QQueryProperty> {
  QueryBuilder<NoteEntity, int, QQueryOperations> tempIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tempId');
    });
  }

  QueryBuilder<NoteEntity, String, QQueryOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<NoteEntity, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<NoteEntity, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NoteEntity, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<NoteEntity, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<NoteEntity, DateTime, QQueryOperations>
  updatedDateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedDateTime');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProfileEntityCollection on Isar {
  IsarCollection<ProfileEntity> get profile => this.collection();
}

const ProfileEntitySchema = CollectionSchema(
  name: r'ProfileEntity',
  id: 2239510315175863988,
  properties: {
    r'id': PropertySchema(id: 0, name: r'id', type: IsarType.string),
    r'updatedDateTime': PropertySchema(
      id: 1,
      name: r'updatedDateTime',
      type: IsarType.dateTime,
    ),
    r'value': PropertySchema(id: 2, name: r'value', type: IsarType.string),
  },

  estimateSize: _profileEntityEstimateSize,
  serialize: _profileEntitySerialize,
  deserialize: _profileEntityDeserialize,
  deserializeProp: _profileEntityDeserializeProp,
  idName: r'tempId',
  indexes: {
    r'id': IndexSchema(
      id: -3268401673993471357,
      name: r'id',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'id',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _profileEntityGetId,
  getLinks: _profileEntityGetLinks,
  attach: _profileEntityAttach,
  version: '3.3.0-dev.3',
);

int _profileEntityEstimateSize(
  ProfileEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.value.length * 3;
  return bytesCount;
}

void _profileEntitySerialize(
  ProfileEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.id);
  writer.writeDateTime(offsets[1], object.updatedDateTime);
  writer.writeString(offsets[2], object.value);
}

ProfileEntity _profileEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProfileEntity();
  object.id = reader.readString(offsets[0]);
  object.tempId = id;
  object.updatedDateTime = reader.readDateTime(offsets[1]);
  object.value = reader.readString(offsets[2]);
  return object;
}

P _profileEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _profileEntityGetId(ProfileEntity object) {
  return object.tempId;
}

List<IsarLinkBase<dynamic>> _profileEntityGetLinks(ProfileEntity object) {
  return [];
}

void _profileEntityAttach(
  IsarCollection<dynamic> col,
  Id id,
  ProfileEntity object,
) {
  object.tempId = id;
}

extension ProfileEntityByIndex on IsarCollection<ProfileEntity> {
  Future<ProfileEntity?> getById(String id) {
    return getByIndex(r'id', [id]);
  }

  ProfileEntity? getByIdSync(String id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(String id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(String id) {
    return deleteByIndexSync(r'id', [id]);
  }

  Future<List<ProfileEntity?>> getAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex(r'id', values);
  }

  List<ProfileEntity?> getAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'id', values);
  }

  Future<int> deleteAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'id', values);
  }

  int deleteAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'id', values);
  }

  Future<Id> putById(ProfileEntity object) {
    return putByIndex(r'id', object);
  }

  Id putByIdSync(ProfileEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById(List<ProfileEntity> objects) {
    return putAllByIndex(r'id', objects);
  }

  List<Id> putAllByIdSync(
    List<ProfileEntity> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'id', objects, saveLinks: saveLinks);
  }
}

extension ProfileEntityQueryWhereSort
    on QueryBuilder<ProfileEntity, ProfileEntity, QWhere> {
  QueryBuilder<ProfileEntity, ProfileEntity, QAfterWhere> anyTempId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProfileEntityQueryWhere
    on QueryBuilder<ProfileEntity, ProfileEntity, QWhereClause> {
  QueryBuilder<ProfileEntity, ProfileEntity, QAfterWhereClause> tempIdEqualTo(
    Id tempId,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(lower: tempId, upper: tempId),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterWhereClause>
  tempIdNotEqualTo(Id tempId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: tempId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: tempId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: tempId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: tempId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterWhereClause>
  tempIdGreaterThan(Id tempId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: tempId, includeLower: include),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterWhereClause> tempIdLessThan(
    Id tempId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: tempId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterWhereClause> tempIdBetween(
    Id lowerTempId,
    Id upperTempId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerTempId,
          includeLower: includeLower,
          upper: upperTempId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterWhereClause> idEqualTo(
    String id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'id', value: [id]),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterWhereClause> idNotEqualTo(
    String id,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'id',
                lower: [],
                upper: [id],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'id',
                lower: [id],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'id',
                lower: [id],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'id',
                lower: [],
                upper: [id],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension ProfileEntityQueryFilter
    on QueryBuilder<ProfileEntity, ProfileEntity, QFilterCondition> {
  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  idStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition> idContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition> idMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'id',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: ''),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'id', value: ''),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  tempIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'tempId', value: value),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  tempIdGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'tempId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  tempIdLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'tempId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  tempIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'tempId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  updatedDateTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedDateTime', value: value),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  updatedDateTimeGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'updatedDateTime',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  updatedDateTimeLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'updatedDateTime',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  updatedDateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'updatedDateTime',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  valueEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  valueGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  valueLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  valueBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'value',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  valueStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  valueEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  valueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  valueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'value',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'value', value: ''),
      );
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterFilterCondition>
  valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'value', value: ''),
      );
    });
  }
}

extension ProfileEntityQueryObject
    on QueryBuilder<ProfileEntity, ProfileEntity, QFilterCondition> {}

extension ProfileEntityQueryLinks
    on QueryBuilder<ProfileEntity, ProfileEntity, QFilterCondition> {}

extension ProfileEntityQuerySortBy
    on QueryBuilder<ProfileEntity, ProfileEntity, QSortBy> {
  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy>
  sortByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.asc);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy>
  sortByUpdatedDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.desc);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension ProfileEntityQuerySortThenBy
    on QueryBuilder<ProfileEntity, ProfileEntity, QSortThenBy> {
  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy> thenByTempId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempId', Sort.asc);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy> thenByTempIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempId', Sort.desc);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy>
  thenByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.asc);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy>
  thenByUpdatedDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.desc);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension ProfileEntityQueryWhereDistinct
    on QueryBuilder<ProfileEntity, ProfileEntity, QDistinct> {
  QueryBuilder<ProfileEntity, ProfileEntity, QDistinct> distinctById({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QDistinct>
  distinctByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedDateTime');
    });
  }

  QueryBuilder<ProfileEntity, ProfileEntity, QDistinct> distinctByValue({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value', caseSensitive: caseSensitive);
    });
  }
}

extension ProfileEntityQueryProperty
    on QueryBuilder<ProfileEntity, ProfileEntity, QQueryProperty> {
  QueryBuilder<ProfileEntity, int, QQueryOperations> tempIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tempId');
    });
  }

  QueryBuilder<ProfileEntity, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProfileEntity, DateTime, QQueryOperations>
  updatedDateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedDateTime');
    });
  }

  QueryBuilder<ProfileEntity, String, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }
}
