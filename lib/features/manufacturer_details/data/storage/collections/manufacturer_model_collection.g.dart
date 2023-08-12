// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturer_model_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetManufacturerModelCollectionCollection on Isar {
  IsarCollection<ManufacturerModelCollection>
      get manufacturerModelCollections => this.collection();
}

const ManufacturerModelCollectionSchema = CollectionSchema(
  name: r'ManufacturerModelCollection',
  id: 5657208020288894964,
  properties: {
    r'manufacturer': PropertySchema(
      id: 0,
      name: r'manufacturer',
      type: IsarType.string,
    ),
    r'result': PropertySchema(
      id: 1,
      name: r'result',
      type: IsarType.objectList,
      target: r'ManufacturerModelResultCollection',
    )
  },
  estimateSize: _manufacturerModelCollectionEstimateSize,
  serialize: _manufacturerModelCollectionSerialize,
  deserialize: _manufacturerModelCollectionDeserialize,
  deserializeProp: _manufacturerModelCollectionDeserializeProp,
  idName: r'id',
  indexes: {
    r'manufacturer': IndexSchema(
      id: -7451030802822204164,
      name: r'manufacturer',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'manufacturer',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'ManufacturerModelResultCollection':
        ManufacturerModelResultCollectionSchema
  },
  getId: _manufacturerModelCollectionGetId,
  getLinks: _manufacturerModelCollectionGetLinks,
  attach: _manufacturerModelCollectionAttach,
  version: '3.1.0+1',
);

int _manufacturerModelCollectionEstimateSize(
  ManufacturerModelCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.manufacturer.length * 3;
  bytesCount += 3 + object.result.length * 3;
  {
    final offsets = allOffsets[ManufacturerModelResultCollection]!;
    for (var i = 0; i < object.result.length; i++) {
      final value = object.result[i];
      bytesCount += ManufacturerModelResultCollectionSchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _manufacturerModelCollectionSerialize(
  ManufacturerModelCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.manufacturer);
  writer.writeObjectList<ManufacturerModelResultCollection>(
    offsets[1],
    allOffsets,
    ManufacturerModelResultCollectionSchema.serialize,
    object.result,
  );
}

ManufacturerModelCollection _manufacturerModelCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ManufacturerModelCollection(
    reader.readString(offsets[0]),
    reader.readObjectList<ManufacturerModelResultCollection>(
          offsets[1],
          ManufacturerModelResultCollectionSchema.deserialize,
          allOffsets,
          ManufacturerModelResultCollection(),
        ) ??
        [],
  );
  object.id = id;
  return object;
}

P _manufacturerModelCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readObjectList<ManufacturerModelResultCollection>(
            offset,
            ManufacturerModelResultCollectionSchema.deserialize,
            allOffsets,
            ManufacturerModelResultCollection(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _manufacturerModelCollectionGetId(ManufacturerModelCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _manufacturerModelCollectionGetLinks(
    ManufacturerModelCollection object) {
  return [];
}

void _manufacturerModelCollectionAttach(
    IsarCollection<dynamic> col, Id id, ManufacturerModelCollection object) {
  object.id = id;
}

extension ManufacturerModelCollectionByIndex
    on IsarCollection<ManufacturerModelCollection> {
  Future<ManufacturerModelCollection?> getByManufacturer(String manufacturer) {
    return getByIndex(r'manufacturer', [manufacturer]);
  }

  ManufacturerModelCollection? getByManufacturerSync(String manufacturer) {
    return getByIndexSync(r'manufacturer', [manufacturer]);
  }

  Future<bool> deleteByManufacturer(String manufacturer) {
    return deleteByIndex(r'manufacturer', [manufacturer]);
  }

  bool deleteByManufacturerSync(String manufacturer) {
    return deleteByIndexSync(r'manufacturer', [manufacturer]);
  }

  Future<List<ManufacturerModelCollection?>> getAllByManufacturer(
      List<String> manufacturerValues) {
    final values = manufacturerValues.map((e) => [e]).toList();
    return getAllByIndex(r'manufacturer', values);
  }

  List<ManufacturerModelCollection?> getAllByManufacturerSync(
      List<String> manufacturerValues) {
    final values = manufacturerValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'manufacturer', values);
  }

  Future<int> deleteAllByManufacturer(List<String> manufacturerValues) {
    final values = manufacturerValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'manufacturer', values);
  }

  int deleteAllByManufacturerSync(List<String> manufacturerValues) {
    final values = manufacturerValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'manufacturer', values);
  }

  Future<Id> putByManufacturer(ManufacturerModelCollection object) {
    return putByIndex(r'manufacturer', object);
  }

  Id putByManufacturerSync(ManufacturerModelCollection object,
      {bool saveLinks = true}) {
    return putByIndexSync(r'manufacturer', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByManufacturer(
      List<ManufacturerModelCollection> objects) {
    return putAllByIndex(r'manufacturer', objects);
  }

  List<Id> putAllByManufacturerSync(List<ManufacturerModelCollection> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'manufacturer', objects, saveLinks: saveLinks);
  }
}

extension ManufacturerModelCollectionQueryWhereSort on QueryBuilder<
    ManufacturerModelCollection, ManufacturerModelCollection, QWhere> {
  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ManufacturerModelCollectionQueryWhere on QueryBuilder<
    ManufacturerModelCollection, ManufacturerModelCollection, QWhereClause> {
  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterWhereClause> manufacturerEqualTo(String manufacturer) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'manufacturer',
        value: [manufacturer],
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterWhereClause> manufacturerNotEqualTo(String manufacturer) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'manufacturer',
              lower: [],
              upper: [manufacturer],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'manufacturer',
              lower: [manufacturer],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'manufacturer',
              lower: [manufacturer],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'manufacturer',
              lower: [],
              upper: [manufacturer],
              includeUpper: false,
            ));
      }
    });
  }
}

extension ManufacturerModelCollectionQueryFilter on QueryBuilder<
    ManufacturerModelCollection,
    ManufacturerModelCollection,
    QFilterCondition> {
  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterFilterCondition> manufacturerEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterFilterCondition> manufacturerGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterFilterCondition> manufacturerLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterFilterCondition> manufacturerBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'manufacturer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterFilterCondition> manufacturerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterFilterCondition> manufacturerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
          QAfterFilterCondition>
      manufacturerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
          QAfterFilterCondition>
      manufacturerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'manufacturer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterFilterCondition> manufacturerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturer',
        value: '',
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterFilterCondition> manufacturerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'manufacturer',
        value: '',
      ));
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
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

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
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

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
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

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
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

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
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

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
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

extension ManufacturerModelCollectionQueryObject on QueryBuilder<
    ManufacturerModelCollection,
    ManufacturerModelCollection,
    QFilterCondition> {
  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
          QAfterFilterCondition>
      resultElement(FilterQuery<ManufacturerModelResultCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'result');
    });
  }
}

extension ManufacturerModelCollectionQueryLinks on QueryBuilder<
    ManufacturerModelCollection,
    ManufacturerModelCollection,
    QFilterCondition> {}

extension ManufacturerModelCollectionQuerySortBy on QueryBuilder<
    ManufacturerModelCollection, ManufacturerModelCollection, QSortBy> {
  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterSortBy> sortByManufacturer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturer', Sort.asc);
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterSortBy> sortByManufacturerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturer', Sort.desc);
    });
  }
}

extension ManufacturerModelCollectionQuerySortThenBy on QueryBuilder<
    ManufacturerModelCollection, ManufacturerModelCollection, QSortThenBy> {
  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterSortBy> thenByManufacturer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturer', Sort.asc);
    });
  }

  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QAfterSortBy> thenByManufacturerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturer', Sort.desc);
    });
  }
}

extension ManufacturerModelCollectionQueryWhereDistinct on QueryBuilder<
    ManufacturerModelCollection, ManufacturerModelCollection, QDistinct> {
  QueryBuilder<ManufacturerModelCollection, ManufacturerModelCollection,
      QDistinct> distinctByManufacturer({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'manufacturer', caseSensitive: caseSensitive);
    });
  }
}

extension ManufacturerModelCollectionQueryProperty on QueryBuilder<
    ManufacturerModelCollection, ManufacturerModelCollection, QQueryProperty> {
  QueryBuilder<ManufacturerModelCollection, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ManufacturerModelCollection, String, QQueryOperations>
      manufacturerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'manufacturer');
    });
  }

  QueryBuilder<
      ManufacturerModelCollection,
      List<ManufacturerModelResultCollection>,
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

const ManufacturerModelResultCollectionSchema = Schema(
  name: r'ManufacturerModelResultCollection',
  id: -4613405253110518026,
  properties: {
    r'manufacturer': PropertySchema(
      id: 0,
      name: r'manufacturer',
      type: IsarType.string,
    ),
    r'modelName': PropertySchema(
      id: 1,
      name: r'modelName',
      type: IsarType.string,
    )
  },
  estimateSize: _manufacturerModelResultCollectionEstimateSize,
  serialize: _manufacturerModelResultCollectionSerialize,
  deserialize: _manufacturerModelResultCollectionDeserialize,
  deserializeProp: _manufacturerModelResultCollectionDeserializeProp,
);

int _manufacturerModelResultCollectionEstimateSize(
  ManufacturerModelResultCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.manufacturer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.modelName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _manufacturerModelResultCollectionSerialize(
  ManufacturerModelResultCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.manufacturer);
  writer.writeString(offsets[1], object.modelName);
}

ManufacturerModelResultCollection _manufacturerModelResultCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ManufacturerModelResultCollection(
    manufacturer: reader.readStringOrNull(offsets[0]),
    modelName: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _manufacturerModelResultCollectionDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ManufacturerModelResultCollectionQueryFilter on QueryBuilder<
    ManufacturerModelResultCollection,
    ManufacturerModelResultCollection,
    QFilterCondition> {
  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> manufacturerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'manufacturer',
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> manufacturerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'manufacturer',
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> manufacturerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> manufacturerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> manufacturerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> manufacturerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'manufacturer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> manufacturerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> manufacturerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturerModelResultCollection,
          ManufacturerModelResultCollection, QAfterFilterCondition>
      manufacturerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturerModelResultCollection,
          ManufacturerModelResultCollection, QAfterFilterCondition>
      manufacturerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'manufacturer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> manufacturerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturer',
        value: '',
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> manufacturerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'manufacturer',
        value: '',
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> modelNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'modelName',
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> modelNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'modelName',
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> modelNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> modelNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'modelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> modelNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'modelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> modelNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'modelName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> modelNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'modelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> modelNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'modelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturerModelResultCollection,
          ManufacturerModelResultCollection, QAfterFilterCondition>
      modelNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'modelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturerModelResultCollection,
          ManufacturerModelResultCollection, QAfterFilterCondition>
      modelNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'modelName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> modelNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modelName',
        value: '',
      ));
    });
  }

  QueryBuilder<
      ManufacturerModelResultCollection,
      ManufacturerModelResultCollection,
      QAfterFilterCondition> modelNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'modelName',
        value: '',
      ));
    });
  }
}

extension ManufacturerModelResultCollectionQueryObject on QueryBuilder<
    ManufacturerModelResultCollection,
    ManufacturerModelResultCollection,
    QFilterCondition> {}
