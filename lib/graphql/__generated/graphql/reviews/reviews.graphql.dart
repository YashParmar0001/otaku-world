// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetReviews {
  factory Variables$Query$GetReviews({int? page}) =>
      Variables$Query$GetReviews._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetReviews._(this._$data);

  factory Variables$Query$GetReviews.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetReviews._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetReviews<Variables$Query$GetReviews>
      get copyWith => CopyWith$Variables$Query$GetReviews(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetReviews) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    return Object.hashAll([_$data.containsKey('page') ? l$page : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetReviews<TRes> {
  factory CopyWith$Variables$Query$GetReviews(
    Variables$Query$GetReviews instance,
    TRes Function(Variables$Query$GetReviews) then,
  ) = _CopyWithImpl$Variables$Query$GetReviews;

  factory CopyWith$Variables$Query$GetReviews.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetReviews;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetReviews<TRes>
    implements CopyWith$Variables$Query$GetReviews<TRes> {
  _CopyWithImpl$Variables$Query$GetReviews(
    this._instance,
    this._then,
  );

  final Variables$Query$GetReviews _instance;

  final TRes Function(Variables$Query$GetReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) => _then(Variables$Query$GetReviews._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetReviews<TRes>
    implements CopyWith$Variables$Query$GetReviews<TRes> {
  _CopyWithStubImpl$Variables$Query$GetReviews(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetReviews {
  Query$GetReviews({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetReviews.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetReviews(
      Page: l$Page == null
          ? null
          : Query$GetReviews$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetReviews$Page? Page;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Page = Page;
    _resultData['Page'] = l$Page?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Page = Page;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Page,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetReviews) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Page = Page;
    final lOther$Page = other.Page;
    if (l$Page != lOther$Page) {
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

extension UtilityExtension$Query$GetReviews on Query$GetReviews {
  CopyWith$Query$GetReviews<Query$GetReviews> get copyWith =>
      CopyWith$Query$GetReviews(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetReviews<TRes> {
  factory CopyWith$Query$GetReviews(
    Query$GetReviews instance,
    TRes Function(Query$GetReviews) then,
  ) = _CopyWithImpl$Query$GetReviews;

  factory CopyWith$Query$GetReviews.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviews;

  TRes call({
    Query$GetReviews$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetReviews$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetReviews<TRes>
    implements CopyWith$Query$GetReviews<TRes> {
  _CopyWithImpl$Query$GetReviews(
    this._instance,
    this._then,
  );

  final Query$GetReviews _instance;

  final TRes Function(Query$GetReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetReviews(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetReviews$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetReviews$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetReviews$Page.stub(_then(_instance))
        : CopyWith$Query$GetReviews$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetReviews<TRes>
    implements CopyWith$Query$GetReviews<TRes> {
  _CopyWithStubImpl$Query$GetReviews(this._res);

  TRes _res;

  call({
    Query$GetReviews$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetReviews$Page<TRes> get Page =>
      CopyWith$Query$GetReviews$Page.stub(_res);
}

const documentNodeQueryGetReviews = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetReviews'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '20'),
          ),
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
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
            name: NameNode(value: 'reviews'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'CREATED_AT_DESC'))
                ]),
              )
            ],
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
                name: NameNode(value: 'summary'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'userRating'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'rating'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'ratingAmount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'updatedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'user'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'avatar'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'large'),
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
              FieldNode(
                name: NameNode(value: 'media'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'averageScore'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bannerImage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'userPreferred'),
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
Query$GetReviews _parserFn$Query$GetReviews(Map<String, dynamic> data) =>
    Query$GetReviews.fromJson(data);
typedef OnQueryComplete$Query$GetReviews = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetReviews?,
);

class Options$Query$GetReviews extends graphql.QueryOptions<Query$GetReviews> {
  Options$Query$GetReviews({
    String? operationName,
    Variables$Query$GetReviews? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetReviews? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetReviews? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
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
                    data == null ? null : _parserFn$Query$GetReviews(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetReviews,
          parserFn: _parserFn$Query$GetReviews,
        );

  final OnQueryComplete$Query$GetReviews? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetReviews
    extends graphql.WatchQueryOptions<Query$GetReviews> {
  WatchOptions$Query$GetReviews({
    String? operationName,
    Variables$Query$GetReviews? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetReviews? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetReviews,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetReviews,
        );
}

class FetchMoreOptions$Query$GetReviews extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetReviews({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetReviews? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetReviews,
        );
}

extension ClientExtension$Query$GetReviews on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetReviews>> query$GetReviews(
          [Options$Query$GetReviews? options]) async =>
      await this.query(options ?? Options$Query$GetReviews());
  graphql.ObservableQuery<Query$GetReviews> watchQuery$GetReviews(
          [WatchOptions$Query$GetReviews? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetReviews());
  void writeQuery$GetReviews({
    required Query$GetReviews data,
    Variables$Query$GetReviews? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetReviews),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetReviews? readQuery$GetReviews({
    Variables$Query$GetReviews? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetReviews),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetReviews.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetReviews> useQuery$GetReviews(
        [Options$Query$GetReviews? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetReviews());
graphql.ObservableQuery<Query$GetReviews> useWatchQuery$GetReviews(
        [WatchOptions$Query$GetReviews? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetReviews());

class Query$GetReviews$Widget extends graphql_flutter.Query<Query$GetReviews> {
  Query$GetReviews$Widget({
    widgets.Key? key,
    Options$Query$GetReviews? options,
    required graphql_flutter.QueryBuilder<Query$GetReviews> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetReviews(),
          builder: builder,
        );
}

class Query$GetReviews$Page {
  Query$GetReviews$Page({
    this.pageInfo,
    this.reviews,
    this.$__typename = 'Page',
  });

  factory Query$GetReviews$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return Query$GetReviews$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetReviews$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      reviews: (l$reviews as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetReviews$Page$reviews.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetReviews$Page$pageInfo? pageInfo;

  final List<Query$GetReviews$Page$reviews?>? reviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$reviews = reviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$reviews == null ? null : Object.hashAll(l$reviews.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetReviews$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$reviews = reviews;
    final lOther$reviews = other.reviews;
    if (l$reviews != null && lOther$reviews != null) {
      if (l$reviews.length != lOther$reviews.length) {
        return false;
      }
      for (int i = 0; i < l$reviews.length; i++) {
        final l$reviews$entry = l$reviews[i];
        final lOther$reviews$entry = lOther$reviews[i];
        if (l$reviews$entry != lOther$reviews$entry) {
          return false;
        }
      }
    } else if (l$reviews != lOther$reviews) {
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

extension UtilityExtension$Query$GetReviews$Page on Query$GetReviews$Page {
  CopyWith$Query$GetReviews$Page<Query$GetReviews$Page> get copyWith =>
      CopyWith$Query$GetReviews$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetReviews$Page<TRes> {
  factory CopyWith$Query$GetReviews$Page(
    Query$GetReviews$Page instance,
    TRes Function(Query$GetReviews$Page) then,
  ) = _CopyWithImpl$Query$GetReviews$Page;

  factory CopyWith$Query$GetReviews$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviews$Page;

  TRes call({
    Query$GetReviews$Page$pageInfo? pageInfo,
    List<Query$GetReviews$Page$reviews?>? reviews,
    String? $__typename,
  });
  CopyWith$Query$GetReviews$Page$pageInfo<TRes> get pageInfo;
  TRes reviews(
      Iterable<Query$GetReviews$Page$reviews?>? Function(
              Iterable<
                  CopyWith$Query$GetReviews$Page$reviews<
                      Query$GetReviews$Page$reviews>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetReviews$Page<TRes>
    implements CopyWith$Query$GetReviews$Page<TRes> {
  _CopyWithImpl$Query$GetReviews$Page(
    this._instance,
    this._then,
  );

  final Query$GetReviews$Page _instance;

  final TRes Function(Query$GetReviews$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetReviews$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetReviews$Page$pageInfo?),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as List<Query$GetReviews$Page$reviews?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetReviews$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetReviews$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$GetReviews$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes reviews(
          Iterable<Query$GetReviews$Page$reviews?>? Function(
                  Iterable<
                      CopyWith$Query$GetReviews$Page$reviews<
                          Query$GetReviews$Page$reviews>?>?)
              _fn) =>
      call(
          reviews: _fn(_instance.reviews?.map((e) => e == null
              ? null
              : CopyWith$Query$GetReviews$Page$reviews(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetReviews$Page<TRes>
    implements CopyWith$Query$GetReviews$Page<TRes> {
  _CopyWithStubImpl$Query$GetReviews$Page(this._res);

  TRes _res;

  call({
    Query$GetReviews$Page$pageInfo? pageInfo,
    List<Query$GetReviews$Page$reviews?>? reviews,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetReviews$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetReviews$Page$pageInfo.stub(_res);

  reviews(_fn) => _res;
}

class Query$GetReviews$Page$pageInfo {
  Query$GetReviews$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetReviews$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetReviews$Page$pageInfo(
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetReviews$Page$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$GetReviews$Page$pageInfo
    on Query$GetReviews$Page$pageInfo {
  CopyWith$Query$GetReviews$Page$pageInfo<Query$GetReviews$Page$pageInfo>
      get copyWith => CopyWith$Query$GetReviews$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetReviews$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetReviews$Page$pageInfo(
    Query$GetReviews$Page$pageInfo instance,
    TRes Function(Query$GetReviews$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetReviews$Page$pageInfo;

  factory CopyWith$Query$GetReviews$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviews$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetReviews$Page$pageInfo<TRes>
    implements CopyWith$Query$GetReviews$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetReviews$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetReviews$Page$pageInfo _instance;

  final TRes Function(Query$GetReviews$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetReviews$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetReviews$Page$pageInfo<TRes>
    implements CopyWith$Query$GetReviews$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetReviews$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetReviews$Page$reviews {
  Query$GetReviews$Page$reviews({
    required this.id,
    this.summary,
    this.userRating,
    this.rating,
    this.ratingAmount,
    required this.createdAt,
    required this.updatedAt,
    this.user,
    this.media,
    this.$__typename = 'Review',
  });

  factory Query$GetReviews$Page$reviews.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$summary = json['summary'];
    final l$userRating = json['userRating'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetReviews$Page$reviews(
      id: (l$id as int),
      summary: (l$summary as String?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$ReviewRating((l$userRating as String)),
      rating: (l$rating as int?),
      ratingAmount: (l$ratingAmount as int?),
      createdAt: (l$createdAt as int),
      updatedAt: (l$updatedAt as int),
      user: l$user == null
          ? null
          : Query$GetReviews$Page$reviews$user.fromJson(
              (l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Query$GetReviews$Page$reviews$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? summary;

  final Enum$ReviewRating? userRating;

  final int? rating;

  final int? ratingAmount;

  final int createdAt;

  final int updatedAt;

  final Query$GetReviews$Page$reviews$user? user;

  final Query$GetReviews$Page$reviews$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$userRating = userRating;
    _resultData['userRating'] =
        l$userRating == null ? null : toJson$Enum$ReviewRating(l$userRating);
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$ratingAmount = ratingAmount;
    _resultData['ratingAmount'] = l$ratingAmount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$summary = summary;
    final l$userRating = userRating;
    final l$rating = rating;
    final l$ratingAmount = ratingAmount;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$summary,
      l$userRating,
      l$rating,
      l$ratingAmount,
      l$createdAt,
      l$updatedAt,
      l$user,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetReviews$Page$reviews) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$ratingAmount = ratingAmount;
    final lOther$ratingAmount = other.ratingAmount;
    if (l$ratingAmount != lOther$ratingAmount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Query$GetReviews$Page$reviews
    on Query$GetReviews$Page$reviews {
  CopyWith$Query$GetReviews$Page$reviews<Query$GetReviews$Page$reviews>
      get copyWith => CopyWith$Query$GetReviews$Page$reviews(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetReviews$Page$reviews<TRes> {
  factory CopyWith$Query$GetReviews$Page$reviews(
    Query$GetReviews$Page$reviews instance,
    TRes Function(Query$GetReviews$Page$reviews) then,
  ) = _CopyWithImpl$Query$GetReviews$Page$reviews;

  factory CopyWith$Query$GetReviews$Page$reviews.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviews$Page$reviews;

  TRes call({
    int? id,
    String? summary,
    Enum$ReviewRating? userRating,
    int? rating,
    int? ratingAmount,
    int? createdAt,
    int? updatedAt,
    Query$GetReviews$Page$reviews$user? user,
    Query$GetReviews$Page$reviews$media? media,
    String? $__typename,
  });
  CopyWith$Query$GetReviews$Page$reviews$user<TRes> get user;
  CopyWith$Query$GetReviews$Page$reviews$media<TRes> get media;
}

class _CopyWithImpl$Query$GetReviews$Page$reviews<TRes>
    implements CopyWith$Query$GetReviews$Page$reviews<TRes> {
  _CopyWithImpl$Query$GetReviews$Page$reviews(
    this._instance,
    this._then,
  );

  final Query$GetReviews$Page$reviews _instance;

  final TRes Function(Query$GetReviews$Page$reviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? summary = _undefined,
    Object? userRating = _undefined,
    Object? rating = _undefined,
    Object? ratingAmount = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetReviews$Page$reviews(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$ReviewRating?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        ratingAmount: ratingAmount == _undefined
            ? _instance.ratingAmount
            : (ratingAmount as int?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Query$GetReviews$Page$reviews$user?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$GetReviews$Page$reviews$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetReviews$Page$reviews$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetReviews$Page$reviews$user.stub(_then(_instance))
        : CopyWith$Query$GetReviews$Page$reviews$user(
            local$user, (e) => call(user: e));
  }

  CopyWith$Query$GetReviews$Page$reviews$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetReviews$Page$reviews$media.stub(_then(_instance))
        : CopyWith$Query$GetReviews$Page$reviews$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetReviews$Page$reviews<TRes>
    implements CopyWith$Query$GetReviews$Page$reviews<TRes> {
  _CopyWithStubImpl$Query$GetReviews$Page$reviews(this._res);

  TRes _res;

  call({
    int? id,
    String? summary,
    Enum$ReviewRating? userRating,
    int? rating,
    int? ratingAmount,
    int? createdAt,
    int? updatedAt,
    Query$GetReviews$Page$reviews$user? user,
    Query$GetReviews$Page$reviews$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetReviews$Page$reviews$user<TRes> get user =>
      CopyWith$Query$GetReviews$Page$reviews$user.stub(_res);

  CopyWith$Query$GetReviews$Page$reviews$media<TRes> get media =>
      CopyWith$Query$GetReviews$Page$reviews$media.stub(_res);
}

class Query$GetReviews$Page$reviews$user {
  Query$GetReviews$Page$reviews$user({
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$GetReviews$Page$reviews$user.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$GetReviews$Page$reviews$user(
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$GetReviews$Page$reviews$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Query$GetReviews$Page$reviews$user$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetReviews$Page$reviews$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtension$Query$GetReviews$Page$reviews$user
    on Query$GetReviews$Page$reviews$user {
  CopyWith$Query$GetReviews$Page$reviews$user<
          Query$GetReviews$Page$reviews$user>
      get copyWith => CopyWith$Query$GetReviews$Page$reviews$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetReviews$Page$reviews$user<TRes> {
  factory CopyWith$Query$GetReviews$Page$reviews$user(
    Query$GetReviews$Page$reviews$user instance,
    TRes Function(Query$GetReviews$Page$reviews$user) then,
  ) = _CopyWithImpl$Query$GetReviews$Page$reviews$user;

  factory CopyWith$Query$GetReviews$Page$reviews$user.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviews$Page$reviews$user;

  TRes call({
    String? name,
    Query$GetReviews$Page$reviews$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$GetReviews$Page$reviews$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Query$GetReviews$Page$reviews$user<TRes>
    implements CopyWith$Query$GetReviews$Page$reviews$user<TRes> {
  _CopyWithImpl$Query$GetReviews$Page$reviews$user(
    this._instance,
    this._then,
  );

  final Query$GetReviews$Page$reviews$user _instance;

  final TRes Function(Query$GetReviews$Page$reviews$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetReviews$Page$reviews$user(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$GetReviews$Page$reviews$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetReviews$Page$reviews$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$GetReviews$Page$reviews$user$avatar.stub(
            _then(_instance))
        : CopyWith$Query$GetReviews$Page$reviews$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$GetReviews$Page$reviews$user<TRes>
    implements CopyWith$Query$GetReviews$Page$reviews$user<TRes> {
  _CopyWithStubImpl$Query$GetReviews$Page$reviews$user(this._res);

  TRes _res;

  call({
    String? name,
    Query$GetReviews$Page$reviews$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetReviews$Page$reviews$user$avatar<TRes> get avatar =>
      CopyWith$Query$GetReviews$Page$reviews$user$avatar.stub(_res);
}

class Query$GetReviews$Page$reviews$user$avatar {
  Query$GetReviews$Page$reviews$user$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$GetReviews$Page$reviews$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$GetReviews$Page$reviews$user$avatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetReviews$Page$reviews$user$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Query$GetReviews$Page$reviews$user$avatar
    on Query$GetReviews$Page$reviews$user$avatar {
  CopyWith$Query$GetReviews$Page$reviews$user$avatar<
          Query$GetReviews$Page$reviews$user$avatar>
      get copyWith => CopyWith$Query$GetReviews$Page$reviews$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetReviews$Page$reviews$user$avatar<TRes> {
  factory CopyWith$Query$GetReviews$Page$reviews$user$avatar(
    Query$GetReviews$Page$reviews$user$avatar instance,
    TRes Function(Query$GetReviews$Page$reviews$user$avatar) then,
  ) = _CopyWithImpl$Query$GetReviews$Page$reviews$user$avatar;

  factory CopyWith$Query$GetReviews$Page$reviews$user$avatar.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviews$Page$reviews$user$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetReviews$Page$reviews$user$avatar<TRes>
    implements CopyWith$Query$GetReviews$Page$reviews$user$avatar<TRes> {
  _CopyWithImpl$Query$GetReviews$Page$reviews$user$avatar(
    this._instance,
    this._then,
  );

  final Query$GetReviews$Page$reviews$user$avatar _instance;

  final TRes Function(Query$GetReviews$Page$reviews$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetReviews$Page$reviews$user$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetReviews$Page$reviews$user$avatar<TRes>
    implements CopyWith$Query$GetReviews$Page$reviews$user$avatar<TRes> {
  _CopyWithStubImpl$Query$GetReviews$Page$reviews$user$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetReviews$Page$reviews$media {
  Query$GetReviews$Page$reviews$media({
    this.averageScore,
    this.bannerImage,
    this.title,
    this.$__typename = 'Media',
  });

  factory Query$GetReviews$Page$reviews$media.fromJson(
      Map<String, dynamic> json) {
    final l$averageScore = json['averageScore'];
    final l$bannerImage = json['bannerImage'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$GetReviews$Page$reviews$media(
      averageScore: (l$averageScore as int?),
      bannerImage: (l$bannerImage as String?),
      title: l$title == null
          ? null
          : Query$GetReviews$Page$reviews$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? averageScore;

  final String? bannerImage;

  final Query$GetReviews$Page$reviews$media$title? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$averageScore = averageScore;
    _resultData['averageScore'] = l$averageScore;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$averageScore = averageScore;
    final l$bannerImage = bannerImage;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$averageScore,
      l$bannerImage,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetReviews$Page$reviews$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$averageScore = averageScore;
    final lOther$averageScore = other.averageScore;
    if (l$averageScore != lOther$averageScore) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$GetReviews$Page$reviews$media
    on Query$GetReviews$Page$reviews$media {
  CopyWith$Query$GetReviews$Page$reviews$media<
          Query$GetReviews$Page$reviews$media>
      get copyWith => CopyWith$Query$GetReviews$Page$reviews$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetReviews$Page$reviews$media<TRes> {
  factory CopyWith$Query$GetReviews$Page$reviews$media(
    Query$GetReviews$Page$reviews$media instance,
    TRes Function(Query$GetReviews$Page$reviews$media) then,
  ) = _CopyWithImpl$Query$GetReviews$Page$reviews$media;

  factory CopyWith$Query$GetReviews$Page$reviews$media.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviews$Page$reviews$media;

  TRes call({
    int? averageScore,
    String? bannerImage,
    Query$GetReviews$Page$reviews$media$title? title,
    String? $__typename,
  });
  CopyWith$Query$GetReviews$Page$reviews$media$title<TRes> get title;
}

class _CopyWithImpl$Query$GetReviews$Page$reviews$media<TRes>
    implements CopyWith$Query$GetReviews$Page$reviews$media<TRes> {
  _CopyWithImpl$Query$GetReviews$Page$reviews$media(
    this._instance,
    this._then,
  );

  final Query$GetReviews$Page$reviews$media _instance;

  final TRes Function(Query$GetReviews$Page$reviews$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? averageScore = _undefined,
    Object? bannerImage = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetReviews$Page$reviews$media(
        averageScore: averageScore == _undefined
            ? _instance.averageScore
            : (averageScore as int?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$GetReviews$Page$reviews$media$title?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetReviews$Page$reviews$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$GetReviews$Page$reviews$media$title.stub(
            _then(_instance))
        : CopyWith$Query$GetReviews$Page$reviews$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Query$GetReviews$Page$reviews$media<TRes>
    implements CopyWith$Query$GetReviews$Page$reviews$media<TRes> {
  _CopyWithStubImpl$Query$GetReviews$Page$reviews$media(this._res);

  TRes _res;

  call({
    int? averageScore,
    String? bannerImage,
    Query$GetReviews$Page$reviews$media$title? title,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetReviews$Page$reviews$media$title<TRes> get title =>
      CopyWith$Query$GetReviews$Page$reviews$media$title.stub(_res);
}

class Query$GetReviews$Page$reviews$media$title {
  Query$GetReviews$Page$reviews$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$GetReviews$Page$reviews$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$GetReviews$Page$reviews$media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetReviews$Page$reviews$media$title) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
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

extension UtilityExtension$Query$GetReviews$Page$reviews$media$title
    on Query$GetReviews$Page$reviews$media$title {
  CopyWith$Query$GetReviews$Page$reviews$media$title<
          Query$GetReviews$Page$reviews$media$title>
      get copyWith => CopyWith$Query$GetReviews$Page$reviews$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetReviews$Page$reviews$media$title<TRes> {
  factory CopyWith$Query$GetReviews$Page$reviews$media$title(
    Query$GetReviews$Page$reviews$media$title instance,
    TRes Function(Query$GetReviews$Page$reviews$media$title) then,
  ) = _CopyWithImpl$Query$GetReviews$Page$reviews$media$title;

  factory CopyWith$Query$GetReviews$Page$reviews$media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviews$Page$reviews$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetReviews$Page$reviews$media$title<TRes>
    implements CopyWith$Query$GetReviews$Page$reviews$media$title<TRes> {
  _CopyWithImpl$Query$GetReviews$Page$reviews$media$title(
    this._instance,
    this._then,
  );

  final Query$GetReviews$Page$reviews$media$title _instance;

  final TRes Function(Query$GetReviews$Page$reviews$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetReviews$Page$reviews$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetReviews$Page$reviews$media$title<TRes>
    implements CopyWith$Query$GetReviews$Page$reviews$media$title<TRes> {
  _CopyWithStubImpl$Query$GetReviews$Page$reviews$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}
