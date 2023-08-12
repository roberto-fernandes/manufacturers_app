// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturers_page_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetManufacturersPageCollectionCollection on Isar {
  IsarCollection<ManufacturersPageCollection>
      get manufacturersPageCollections => this.collection();
}

const ManufacturersPageCollectionSchema = CollectionSchema(
  name: r'ManufacturersPageCollection',
  id: 3304022731778670709,
  properties: {
    r'count': PropertySchema(
      id: 0,
      name: r'count',
      type: IsarType.long,
    ),
    r'result': PropertySchema(
      id: 1,
      name: r'result',
      type: IsarType.objectList,
      target: r'ManufacturersPageResultCollection',
    )
  },
  estimateSize: _manufacturersPageCollectionEstimateSize,
  serialize: _manufacturersPageCollectionSerialize,
  deserialize: _manufacturersPageCollectionDeserialize,
  deserializeProp: _manufacturersPageCollectionDeserializeProp,
  idName: r'page',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'ManufacturersPageResultCollection':
        ManufacturersPageResultCollectionSchema
  },
  getId: _manufacturersPageCollectionGetId,
  getLinks: _manufacturersPageCollectionGetLinks,
  attach: _manufacturersPageCollectionAttach,
  version: '3.1.0+1',
);

int _manufacturersPageCollectionEstimateSize(
  ManufacturersPageCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.result.length * 3;
  {
    final offsets = allOffsets[ManufacturersPageResultCollection]!;
    for (var i = 0; i < object.result.length; i++) {
      final value = object.result[i];
      bytesCount += ManufacturersPageResultCollectionSchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _manufacturersPageCollectionSerialize(
  ManufacturersPageCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.count);
  writer.writeObjectList<ManufacturersPageResultCollection>(
    offsets[1],
    allOffsets,
    ManufacturersPageResultCollectionSchema.serialize,
    object.result,
  );
}

ManufacturersPageCollection _manufacturersPageCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ManufacturersPageCollection(
    id,
    reader.readObjectList<ManufacturersPageResultCollection>(
          offsets[1],
          ManufacturersPageResultCollectionSchema.deserialize,
          allOffsets,
          ManufacturersPageResultCollection(),
        ) ??
        [],
    reader.readLong(offsets[0]),
  );
  return object;
}

P _manufacturersPageCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readObjectList<ManufacturersPageResultCollection>(
            offset,
            ManufacturersPageResultCollectionSchema.deserialize,
            allOffsets,
            ManufacturersPageResultCollection(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _manufacturersPageCollectionGetId(ManufacturersPageCollection object) {
  return object.page;
}

List<IsarLinkBase<dynamic>> _manufacturersPageCollectionGetLinks(
    ManufacturersPageCollection object) {
  return [];
}

void _manufacturersPageCollectionAttach(
    IsarCollection<dynamic> col, Id id, ManufacturersPageCollection object) {}

extension ManufacturersPageCollectionQueryWhereSort on QueryBuilder<
    ManufacturersPageCollection, ManufacturersPageCollection, QWhere> {
  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterWhere> anyPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ManufacturersPageCollectionQueryWhere on QueryBuilder<
    ManufacturersPageCollection, ManufacturersPageCollection, QWhereClause> {
  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterWhereClause> pageEqualTo(Id page) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: page,
        upper: page,
      ));
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterWhereClause> pageNotEqualTo(Id page) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: page, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: page, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: page, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: page, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterWhereClause> pageGreaterThan(Id page, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: page, includeLower: include),
      );
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterWhereClause> pageLessThan(Id page, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: page, includeUpper: include),
      );
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterWhereClause> pageBetween(
    Id lowerPage,
    Id upperPage, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerPage,
        includeLower: includeLower,
        upper: upperPage,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ManufacturersPageCollectionQueryFilter on QueryBuilder<
    ManufacturersPageCollection,
    ManufacturersPageCollection,
    QFilterCondition> {
  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> countEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> countGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> countLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> countBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'count',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> pageEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> pageGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> pageLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> pageBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'page',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> resultLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'result',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> resultIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'result',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> resultIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'result',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> resultLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'result',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> resultLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'result',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterFilterCondition> resultLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'result',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension ManufacturersPageCollectionQueryObject on QueryBuilder<
    ManufacturersPageCollection,
    ManufacturersPageCollection,
    QFilterCondition> {
  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
          QAfterFilterCondition>
      resultElement(FilterQuery<ManufacturersPageResultCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'result');
    });
  }
}

extension ManufacturersPageCollectionQueryLinks on QueryBuilder<
    ManufacturersPageCollection,
    ManufacturersPageCollection,
    QFilterCondition> {}

extension ManufacturersPageCollectionQuerySortBy on QueryBuilder<
    ManufacturersPageCollection, ManufacturersPageCollection, QSortBy> {
  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterSortBy> sortByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterSortBy> sortByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }
}

extension ManufacturersPageCollectionQuerySortThenBy on QueryBuilder<
    ManufacturersPageCollection, ManufacturersPageCollection, QSortThenBy> {
  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterSortBy> thenByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterSortBy> thenByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterSortBy> thenByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.asc);
    });
  }

  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QAfterSortBy> thenByPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.desc);
    });
  }
}

extension ManufacturersPageCollectionQueryWhereDistinct on QueryBuilder<
    ManufacturersPageCollection, ManufacturersPageCollection, QDistinct> {
  QueryBuilder<ManufacturersPageCollection, ManufacturersPageCollection,
      QDistinct> distinctByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'count');
    });
  }
}

extension ManufacturersPageCollectionQueryProperty on QueryBuilder<
    ManufacturersPageCollection, ManufacturersPageCollection, QQueryProperty> {
  QueryBuilder<ManufacturersPageCollection, int, QQueryOperations>
      pageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'page');
    });
  }

  QueryBuilder<ManufacturersPageCollection, int, QQueryOperations>
      countProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'count');
    });
  }

  QueryBuilder<
      ManufacturersPageCollection,
      List<ManufacturersPageResultCollection>,
      QQueryOperations> resultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'result');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ManufacturersPageResultCollectionSchema = Schema(
  name: r'ManufacturersPageResultCollection',
  id: 1071765897021173305,
  properties: {
    r'commonName': PropertySchema(
      id: 0,
      name: r'commonName',
      type: IsarType.string,
    ),
    r'country': PropertySchema(
      id: 1,
      name: r'country',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 2,
      name: r'id',
      type: IsarType.long,
    )
  },
  estimateSize: _manufacturersPageResultCollectionEstimateSize,
  serialize: _manufacturersPageResultCollectionSerialize,
  deserialize: _manufacturersPageResultCollectionDeserialize,
  deserializeProp: _manufacturersPageResultCollectionDeserializeProp,
);

int _manufacturersPageResultCollectionEstimateSize(
  ManufacturersPageResultCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.commonName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.country;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _manufacturersPageResultCollectionSerialize(
  ManufacturersPageResultCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.commonName);
  writer.writeString(offsets[1], object.country);
  writer.writeLong(offsets[2], object.id);
}

ManufacturersPageResultCollection _manufacturersPageResultCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ManufacturersPageResultCollection(
    commonName: reader.readStringOrNull(offsets[0]),
    country: reader.readStringOrNull(offsets[1]),
    id: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _manufacturersPageResultCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ManufacturersPageResultCollectionQueryFilter on QueryBuilder<
    ManufacturersPageResultCollection,
    ManufacturersPageResultCollection,
    QFilterCondition> {
  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> commonNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'commonName',
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> commonNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'commonName',
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> commonNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> commonNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'commonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> commonNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'commonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> commonNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'commonName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> commonNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'commonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> commonNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'commonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
          ManufacturersPageResultCollection, QAfterFilterCondition>
      commonNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'commonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
          ManufacturersPageResultCollection, QAfterFilterCondition>
      commonNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'commonName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> commonNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commonName',
        value: '',
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> commonNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'commonName',
        value: '',
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> countryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> countryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
      ManufacturersPageResultCollection, QAfterFilterCondition> countryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> countryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
      ManufacturersPageResultCollection, QAfterFilterCondition> countryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
      ManufacturersPageResultCollection, QAfterFilterCondition> countryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'country',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> countryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
      ManufacturersPageResultCollection, QAfterFilterCondition> countryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
          ManufacturersPageResultCollection, QAfterFilterCondition>
      countryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
          ManufacturersPageResultCollection, QAfterFilterCondition>
      countryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
      ManufacturersPageResultCollection, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
      ManufacturersPageResultCollection, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<
      ManufacturersPageResultCollection,
      ManufacturersPageResultCollection,
      QAfterFilterCondition> idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
      ManufacturersPageResultCollection, QAfterFilterCondition> idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
      ManufacturersPageResultCollection, QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersPageResultCollection,
      ManufacturersPageResultCollection, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ManufacturersPageResultCollectionQueryObject on QueryBuilder<
    ManufacturersPageResultCollection,
    ManufacturersPageResultCollection,
    QFilterCondition> {}
