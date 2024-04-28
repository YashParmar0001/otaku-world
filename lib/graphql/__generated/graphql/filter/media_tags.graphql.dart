// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetMediaTags {
  Query$GetMediaTags({
    this.MediaTagCollection,
    this.$__typename = 'Query',
  });

  factory Query$GetMediaTags.fromJson(Map<String, dynamic> json) {
    final l$MediaTagCollection = json['MediaTagCollection'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaTags(
      MediaTagCollection: (l$MediaTagCollection as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetMediaTags$MediaTagCollection.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetMediaTags$MediaTagCollection?>? MediaTagCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$MediaTagCollection = MediaTagCollection;
    _resultData['MediaTagCollection'] =
        l$MediaTagCollection?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$MediaTagCollection = MediaTagCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$MediaTagCollection == null
          ? null
          : Object.hashAll(l$MediaTagCollection.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaTags) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$MediaTagCollection = MediaTagCollection;
    final lOther$MediaTagCollection = other.MediaTagCollection;
    if (l$MediaTagCollection != null && lOther$MediaTagCollection != null) {
      if (l$MediaTagCollection.length != lOther$MediaTagCollection.length) {
        return false;
      }
      for (int i = 0; i < l$MediaTagCollection.length; i++) {
        final l$MediaTagCollection$entry = l$MediaTagCollection[i];
        final lOther$MediaTagCollection$entry = lOther$MediaTagCollection[i];
        if (l$MediaTagCollection$entry != lOther$MediaTagCollection$entry) {
          return false;
        }
      }
    } else if (l$MediaTagCollection != lOther$MediaTagCollection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMediaTags on Query$GetMediaTags {
  CopyWith$Query$GetMediaTags<Query$GetMediaTags> get copyWith =>
      CopyWith$Query$GetMediaTags(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMediaTags<TRes> {
  factory CopyWith$Query$GetMediaTags(
    Query$GetMediaTags instance,
    TRes Function(Query$GetMediaTags) then,
  ) = _CopyWithImpl$Query$GetMediaTags;

  factory CopyWith$Query$GetMediaTags.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaTags;

  TRes call({
    List<Query$GetMediaTags$MediaTagCollection?>? MediaTagCollection,
    String? $__typename,
  });
  TRes MediaTagCollection(
      Iterable<Query$GetMediaTags$MediaTagCollection?>? Function(
              Iterable<
                  CopyWith$Query$GetMediaTags$MediaTagCollection<
                      Query$GetMediaTags$MediaTagCollection>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetMediaTags<TRes>
    implements CopyWith$Query$GetMediaTags<TRes> {
  _CopyWithImpl$Query$GetMediaTags(
    this._instance,
    this._then,
  );

  final Query$GetMediaTags _instance;

  final TRes Function(Query$GetMediaTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? MediaTagCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaTags(
        MediaTagCollection: MediaTagCollection == _undefined
            ? _instance.MediaTagCollection
            : (MediaTagCollection
                as List<Query$GetMediaTags$MediaTagCollection?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes MediaTagCollection(
          Iterable<Query$GetMediaTags$MediaTagCollection?>? Function(
                  Iterable<
                      CopyWith$Query$GetMediaTags$MediaTagCollection<
                          Query$GetMediaTags$MediaTagCollection>?>?)
              _fn) =>
      call(
          MediaTagCollection:
              _fn(_instance.MediaTagCollection?.map((e) => e == null
                  ? null
                  : CopyWith$Query$GetMediaTags$MediaTagCollection(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$GetMediaTags<TRes>
    implements CopyWith$Query$GetMediaTags<TRes> {
  _CopyWithStubImpl$Query$GetMediaTags(this._res);

  TRes _res;

  call({
    List<Query$GetMediaTags$MediaTagCollection?>? MediaTagCollection,
    String? $__typename,
  }) =>
      _res;

  MediaTagCollection(_fn) => _res;
}

const documentNodeQueryGetMediaTags = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMediaTags'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'MediaTagCollection'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetMediaTags _parserFn$Query$GetMediaTags(Map<String, dynamic> data) =>
    Query$GetMediaTags.fromJson(data);
typedef OnQueryComplete$Query$GetMediaTags = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMediaTags?,
);

class Options$Query$GetMediaTags
    extends graphql.QueryOptions<Query$GetMediaTags> {
  Options$Query$GetMediaTags({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMediaTags? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMediaTags? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetMediaTags(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMediaTags,
          parserFn: _parserFn$Query$GetMediaTags,
        );

  final OnQueryComplete$Query$GetMediaTags? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMediaTags
    extends graphql.WatchQueryOptions<Query$GetMediaTags> {
  WatchOptions$Query$GetMediaTags({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMediaTags? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetMediaTags,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMediaTags,
        );
}

class FetchMoreOptions$Query$GetMediaTags extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMediaTags(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetMediaTags,
        );
}

extension ClientExtension$Query$GetMediaTags on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMediaTags>> query$GetMediaTags(
          [Options$Query$GetMediaTags? options]) async =>
      await this.query(options ?? Options$Query$GetMediaTags());
  graphql.ObservableQuery<Query$GetMediaTags> watchQuery$GetMediaTags(
          [WatchOptions$Query$GetMediaTags? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetMediaTags());
  void writeQuery$GetMediaTags({
    required Query$GetMediaTags data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetMediaTags)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetMediaTags? readQuery$GetMediaTags({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetMediaTags)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMediaTags.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMediaTags> useQuery$GetMediaTags(
        [Options$Query$GetMediaTags? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetMediaTags());
graphql.ObservableQuery<Query$GetMediaTags> useWatchQuery$GetMediaTags(
        [WatchOptions$Query$GetMediaTags? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetMediaTags());

class Query$GetMediaTags$Widget
    extends graphql_flutter.Query<Query$GetMediaTags> {
  Query$GetMediaTags$Widget({
    widgets.Key? key,
    Options$Query$GetMediaTags? options,
    required graphql_flutter.QueryBuilder<Query$GetMediaTags> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMediaTags(),
          builder: builder,
        );
}

class Query$GetMediaTags$MediaTagCollection {
  Query$GetMediaTags$MediaTagCollection({
    required this.id,
    required this.name,
    this.category,
    this.description,
    this.$__typename = 'MediaTag',
  });

  factory Query$GetMediaTags$MediaTagCollection.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$category = json['category'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaTags$MediaTagCollection(
      id: (l$id as int),
      name: (l$name as String),
      category: (l$category as String?),
      description: (l$description as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String? category;

  final String? description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$category = category;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$category,
      l$description,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaTags$MediaTagCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMediaTags$MediaTagCollection
    on Query$GetMediaTags$MediaTagCollection {
  CopyWith$Query$GetMediaTags$MediaTagCollection<
          Query$GetMediaTags$MediaTagCollection>
      get copyWith => CopyWith$Query$GetMediaTags$MediaTagCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaTags$MediaTagCollection<TRes> {
  factory CopyWith$Query$GetMediaTags$MediaTagCollection(
    Query$GetMediaTags$MediaTagCollection instance,
    TRes Function(Query$GetMediaTags$MediaTagCollection) then,
  ) = _CopyWithImpl$Query$GetMediaTags$MediaTagCollection;

  factory CopyWith$Query$GetMediaTags$MediaTagCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaTags$MediaTagCollection;

  TRes call({
    int? id,
    String? name,
    String? category,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaTags$MediaTagCollection<TRes>
    implements CopyWith$Query$GetMediaTags$MediaTagCollection<TRes> {
  _CopyWithImpl$Query$GetMediaTags$MediaTagCollection(
    this._instance,
    this._then,
  );

  final Query$GetMediaTags$MediaTagCollection _instance;

  final TRes Function(Query$GetMediaTags$MediaTagCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? category = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaTags$MediaTagCollection(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        category:
            category == _undefined ? _instance.category : (category as String?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaTags$MediaTagCollection<TRes>
    implements CopyWith$Query$GetMediaTags$MediaTagCollection<TRes> {
  _CopyWithStubImpl$Query$GetMediaTags$MediaTagCollection(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? category,
    String? description,
    String? $__typename,
  }) =>
      _res;
}
