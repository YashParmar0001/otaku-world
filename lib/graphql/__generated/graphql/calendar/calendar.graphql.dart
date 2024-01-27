// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetCalendarDay {
  factory Variables$Query$GetCalendarDay({
    int? airingAt_greater,
    int? airingAt_lesser,
  }) =>
      Variables$Query$GetCalendarDay._({
        if (airingAt_greater != null) r'airingAt_greater': airingAt_greater,
        if (airingAt_lesser != null) r'airingAt_lesser': airingAt_lesser,
      });

  Variables$Query$GetCalendarDay._(this._$data);

  factory Variables$Query$GetCalendarDay.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('airingAt_greater')) {
      final l$airingAt_greater = data['airingAt_greater'];
      result$data['airingAt_greater'] = (l$airingAt_greater as int?);
    }
    if (data.containsKey('airingAt_lesser')) {
      final l$airingAt_lesser = data['airingAt_lesser'];
      result$data['airingAt_lesser'] = (l$airingAt_lesser as int?);
    }
    return Variables$Query$GetCalendarDay._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get airingAt_greater => (_$data['airingAt_greater'] as int?);

  int? get airingAt_lesser => (_$data['airingAt_lesser'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('airingAt_greater')) {
      final l$airingAt_greater = airingAt_greater;
      result$data['airingAt_greater'] = l$airingAt_greater;
    }
    if (_$data.containsKey('airingAt_lesser')) {
      final l$airingAt_lesser = airingAt_lesser;
      result$data['airingAt_lesser'] = l$airingAt_lesser;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetCalendarDay<Variables$Query$GetCalendarDay>
      get copyWith => CopyWith$Variables$Query$GetCalendarDay(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCalendarDay) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$airingAt_greater = airingAt_greater;
    final lOther$airingAt_greater = other.airingAt_greater;
    if (_$data.containsKey('airingAt_greater') !=
        other._$data.containsKey('airingAt_greater')) {
      return false;
    }
    if (l$airingAt_greater != lOther$airingAt_greater) {
      return false;
    }
    final l$airingAt_lesser = airingAt_lesser;
    final lOther$airingAt_lesser = other.airingAt_lesser;
    if (_$data.containsKey('airingAt_lesser') !=
        other._$data.containsKey('airingAt_lesser')) {
      return false;
    }
    if (l$airingAt_lesser != lOther$airingAt_lesser) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$airingAt_greater = airingAt_greater;
    final l$airingAt_lesser = airingAt_lesser;
    return Object.hashAll([
      _$data.containsKey('airingAt_greater') ? l$airingAt_greater : const {},
      _$data.containsKey('airingAt_lesser') ? l$airingAt_lesser : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetCalendarDay<TRes> {
  factory CopyWith$Variables$Query$GetCalendarDay(
    Variables$Query$GetCalendarDay instance,
    TRes Function(Variables$Query$GetCalendarDay) then,
  ) = _CopyWithImpl$Variables$Query$GetCalendarDay;

  factory CopyWith$Variables$Query$GetCalendarDay.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCalendarDay;

  TRes call({
    int? airingAt_greater,
    int? airingAt_lesser,
  });
}

class _CopyWithImpl$Variables$Query$GetCalendarDay<TRes>
    implements CopyWith$Variables$Query$GetCalendarDay<TRes> {
  _CopyWithImpl$Variables$Query$GetCalendarDay(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCalendarDay _instance;

  final TRes Function(Variables$Query$GetCalendarDay) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? airingAt_greater = _undefined,
    Object? airingAt_lesser = _undefined,
  }) =>
      _then(Variables$Query$GetCalendarDay._({
        ..._instance._$data,
        if (airingAt_greater != _undefined)
          'airingAt_greater': (airingAt_greater as int?),
        if (airingAt_lesser != _undefined)
          'airingAt_lesser': (airingAt_lesser as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCalendarDay<TRes>
    implements CopyWith$Variables$Query$GetCalendarDay<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCalendarDay(this._res);

  TRes _res;

  call({
    int? airingAt_greater,
    int? airingAt_lesser,
  }) =>
      _res;
}

class Query$GetCalendarDay {
  Query$GetCalendarDay({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetCalendarDay.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetCalendarDay(
      Page: l$Page == null
          ? null
          : Query$GetCalendarDay$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCalendarDay$Page? Page;

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
    if (!(other is Query$GetCalendarDay) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetCalendarDay on Query$GetCalendarDay {
  CopyWith$Query$GetCalendarDay<Query$GetCalendarDay> get copyWith =>
      CopyWith$Query$GetCalendarDay(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCalendarDay<TRes> {
  factory CopyWith$Query$GetCalendarDay(
    Query$GetCalendarDay instance,
    TRes Function(Query$GetCalendarDay) then,
  ) = _CopyWithImpl$Query$GetCalendarDay;

  factory CopyWith$Query$GetCalendarDay.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCalendarDay;

  TRes call({
    Query$GetCalendarDay$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetCalendarDay$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetCalendarDay<TRes>
    implements CopyWith$Query$GetCalendarDay<TRes> {
  _CopyWithImpl$Query$GetCalendarDay(
    this._instance,
    this._then,
  );

  final Query$GetCalendarDay _instance;

  final TRes Function(Query$GetCalendarDay) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCalendarDay(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetCalendarDay$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCalendarDay$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetCalendarDay$Page.stub(_then(_instance))
        : CopyWith$Query$GetCalendarDay$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetCalendarDay<TRes>
    implements CopyWith$Query$GetCalendarDay<TRes> {
  _CopyWithStubImpl$Query$GetCalendarDay(this._res);

  TRes _res;

  call({
    Query$GetCalendarDay$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCalendarDay$Page<TRes> get Page =>
      CopyWith$Query$GetCalendarDay$Page.stub(_res);
}

const documentNodeQueryGetCalendarDay = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCalendarDay'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'airingAt_greater')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'airingAt_lesser')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'airingSchedules'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'TIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'airingAt_greater'),
                value: VariableNode(name: NameNode(value: 'airingAt_greater')),
              ),
              ArgumentNode(
                name: NameNode(value: 'airingAt_lesser'),
                value: VariableNode(name: NameNode(value: 'airingAt_lesser')),
              ),
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
                name: NameNode(value: 'media'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                        name: NameNode(value: 'english'),
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
                    name: NameNode(value: 'coverImage'),
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
                        name: NameNode(value: 'extraLarge'),
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
                    name: NameNode(value: 'mediaListEntry'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'status'),
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
                name: NameNode(value: 'airingAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'timeUntilAiring'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'episode'),
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
]);
Query$GetCalendarDay _parserFn$Query$GetCalendarDay(
        Map<String, dynamic> data) =>
    Query$GetCalendarDay.fromJson(data);
typedef OnQueryComplete$Query$GetCalendarDay = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetCalendarDay?,
);

class Options$Query$GetCalendarDay
    extends graphql.QueryOptions<Query$GetCalendarDay> {
  Options$Query$GetCalendarDay({
    String? operationName,
    Variables$Query$GetCalendarDay? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCalendarDay? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCalendarDay? onComplete,
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
                    data == null ? null : _parserFn$Query$GetCalendarDay(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetCalendarDay,
          parserFn: _parserFn$Query$GetCalendarDay,
        );

  final OnQueryComplete$Query$GetCalendarDay? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetCalendarDay
    extends graphql.WatchQueryOptions<Query$GetCalendarDay> {
  WatchOptions$Query$GetCalendarDay({
    String? operationName,
    Variables$Query$GetCalendarDay? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCalendarDay? typedOptimisticResult,
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
          document: documentNodeQueryGetCalendarDay,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetCalendarDay,
        );
}

class FetchMoreOptions$Query$GetCalendarDay extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCalendarDay({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetCalendarDay? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetCalendarDay,
        );
}

extension ClientExtension$Query$GetCalendarDay on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCalendarDay>> query$GetCalendarDay(
          [Options$Query$GetCalendarDay? options]) async =>
      await this.query(options ?? Options$Query$GetCalendarDay());
  graphql.ObservableQuery<Query$GetCalendarDay> watchQuery$GetCalendarDay(
          [WatchOptions$Query$GetCalendarDay? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetCalendarDay());
  void writeQuery$GetCalendarDay({
    required Query$GetCalendarDay data,
    Variables$Query$GetCalendarDay? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetCalendarDay),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetCalendarDay? readQuery$GetCalendarDay({
    Variables$Query$GetCalendarDay? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetCalendarDay),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCalendarDay.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCalendarDay> useQuery$GetCalendarDay(
        [Options$Query$GetCalendarDay? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetCalendarDay());
graphql.ObservableQuery<Query$GetCalendarDay> useWatchQuery$GetCalendarDay(
        [WatchOptions$Query$GetCalendarDay? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetCalendarDay());

class Query$GetCalendarDay$Widget
    extends graphql_flutter.Query<Query$GetCalendarDay> {
  Query$GetCalendarDay$Widget({
    widgets.Key? key,
    Options$Query$GetCalendarDay? options,
    required graphql_flutter.QueryBuilder<Query$GetCalendarDay> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetCalendarDay(),
          builder: builder,
        );
}

class Query$GetCalendarDay$Page {
  Query$GetCalendarDay$Page({
    this.airingSchedules,
    this.$__typename = 'Page',
  });

  factory Query$GetCalendarDay$Page.fromJson(Map<String, dynamic> json) {
    final l$airingSchedules = json['airingSchedules'];
    final l$$__typename = json['__typename'];
    return Query$GetCalendarDay$Page(
      airingSchedules: (l$airingSchedules as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetCalendarDay$Page$airingSchedules.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetCalendarDay$Page$airingSchedules?>? airingSchedules;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$airingSchedules = airingSchedules;
    _resultData['airingSchedules'] =
        l$airingSchedules?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$airingSchedules = airingSchedules;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$airingSchedules == null
          ? null
          : Object.hashAll(l$airingSchedules.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCalendarDay$Page) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$airingSchedules = airingSchedules;
    final lOther$airingSchedules = other.airingSchedules;
    if (l$airingSchedules != null && lOther$airingSchedules != null) {
      if (l$airingSchedules.length != lOther$airingSchedules.length) {
        return false;
      }
      for (int i = 0; i < l$airingSchedules.length; i++) {
        final l$airingSchedules$entry = l$airingSchedules[i];
        final lOther$airingSchedules$entry = lOther$airingSchedules[i];
        if (l$airingSchedules$entry != lOther$airingSchedules$entry) {
          return false;
        }
      }
    } else if (l$airingSchedules != lOther$airingSchedules) {
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

extension UtilityExtension$Query$GetCalendarDay$Page
    on Query$GetCalendarDay$Page {
  CopyWith$Query$GetCalendarDay$Page<Query$GetCalendarDay$Page> get copyWith =>
      CopyWith$Query$GetCalendarDay$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCalendarDay$Page<TRes> {
  factory CopyWith$Query$GetCalendarDay$Page(
    Query$GetCalendarDay$Page instance,
    TRes Function(Query$GetCalendarDay$Page) then,
  ) = _CopyWithImpl$Query$GetCalendarDay$Page;

  factory CopyWith$Query$GetCalendarDay$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCalendarDay$Page;

  TRes call({
    List<Query$GetCalendarDay$Page$airingSchedules?>? airingSchedules,
    String? $__typename,
  });
  TRes airingSchedules(
      Iterable<Query$GetCalendarDay$Page$airingSchedules?>? Function(
              Iterable<
                  CopyWith$Query$GetCalendarDay$Page$airingSchedules<
                      Query$GetCalendarDay$Page$airingSchedules>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetCalendarDay$Page<TRes>
    implements CopyWith$Query$GetCalendarDay$Page<TRes> {
  _CopyWithImpl$Query$GetCalendarDay$Page(
    this._instance,
    this._then,
  );

  final Query$GetCalendarDay$Page _instance;

  final TRes Function(Query$GetCalendarDay$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? airingSchedules = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCalendarDay$Page(
        airingSchedules: airingSchedules == _undefined
            ? _instance.airingSchedules
            : (airingSchedules
                as List<Query$GetCalendarDay$Page$airingSchedules?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes airingSchedules(
          Iterable<Query$GetCalendarDay$Page$airingSchedules?>? Function(
                  Iterable<
                      CopyWith$Query$GetCalendarDay$Page$airingSchedules<
                          Query$GetCalendarDay$Page$airingSchedules>?>?)
              _fn) =>
      call(
          airingSchedules: _fn(_instance.airingSchedules?.map((e) => e == null
              ? null
              : CopyWith$Query$GetCalendarDay$Page$airingSchedules(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetCalendarDay$Page<TRes>
    implements CopyWith$Query$GetCalendarDay$Page<TRes> {
  _CopyWithStubImpl$Query$GetCalendarDay$Page(this._res);

  TRes _res;

  call({
    List<Query$GetCalendarDay$Page$airingSchedules?>? airingSchedules,
    String? $__typename,
  }) =>
      _res;

  airingSchedules(_fn) => _res;
}

class Query$GetCalendarDay$Page$airingSchedules {
  Query$GetCalendarDay$Page$airingSchedules({
    required this.id,
    this.media,
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Query$GetCalendarDay$Page$airingSchedules.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$media = json['media'];
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$GetCalendarDay$Page$airingSchedules(
      id: (l$id as int),
      media: l$media == null
          ? null
          : Query$GetCalendarDay$Page$airingSchedules$media.fromJson(
              (l$media as Map<String, dynamic>)),
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetCalendarDay$Page$airingSchedules$media? media;

  final int airingAt;

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$airingAt = airingAt;
    _resultData['airingAt'] = l$airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$media = media;
    final l$airingAt = airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$media,
      l$airingAt,
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCalendarDay$Page$airingSchedules) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$airingAt = airingAt;
    final lOther$airingAt = other.airingAt;
    if (l$airingAt != lOther$airingAt) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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

extension UtilityExtension$Query$GetCalendarDay$Page$airingSchedules
    on Query$GetCalendarDay$Page$airingSchedules {
  CopyWith$Query$GetCalendarDay$Page$airingSchedules<
          Query$GetCalendarDay$Page$airingSchedules>
      get copyWith => CopyWith$Query$GetCalendarDay$Page$airingSchedules(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCalendarDay$Page$airingSchedules<TRes> {
  factory CopyWith$Query$GetCalendarDay$Page$airingSchedules(
    Query$GetCalendarDay$Page$airingSchedules instance,
    TRes Function(Query$GetCalendarDay$Page$airingSchedules) then,
  ) = _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules;

  factory CopyWith$Query$GetCalendarDay$Page$airingSchedules.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules;

  TRes call({
    int? id,
    Query$GetCalendarDay$Page$airingSchedules$media? media,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media<TRes> get media;
}

class _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules<TRes>
    implements CopyWith$Query$GetCalendarDay$Page$airingSchedules<TRes> {
  _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules(
    this._instance,
    this._then,
  );

  final Query$GetCalendarDay$Page$airingSchedules _instance;

  final TRes Function(Query$GetCalendarDay$Page$airingSchedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? media = _undefined,
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCalendarDay$Page$airingSchedules(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        media: media == _undefined
            ? _instance.media
            : (media as Query$GetCalendarDay$Page$airingSchedules$media?),
        airingAt: airingAt == _undefined || airingAt == null
            ? _instance.airingAt
            : (airingAt as int),
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetCalendarDay$Page$airingSchedules$media.stub(
            _then(_instance))
        : CopyWith$Query$GetCalendarDay$Page$airingSchedules$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules<TRes>
    implements CopyWith$Query$GetCalendarDay$Page$airingSchedules<TRes> {
  _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules(this._res);

  TRes _res;

  call({
    int? id,
    Query$GetCalendarDay$Page$airingSchedules$media? media,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media<TRes> get media =>
      CopyWith$Query$GetCalendarDay$Page$airingSchedules$media.stub(_res);
}

class Query$GetCalendarDay$Page$airingSchedules$media {
  Query$GetCalendarDay$Page$airingSchedules$media({
    this.title,
    this.coverImage,
    this.mediaListEntry,
    this.$__typename = 'Media',
  });

  factory Query$GetCalendarDay$Page$airingSchedules$media.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$mediaListEntry = json['mediaListEntry'];
    final l$$__typename = json['__typename'];
    return Query$GetCalendarDay$Page$airingSchedules$media(
      title: l$title == null
          ? null
          : Query$GetCalendarDay$Page$airingSchedules$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$GetCalendarDay$Page$airingSchedules$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry
              .fromJson((l$mediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCalendarDay$Page$airingSchedules$media$title? title;

  final Query$GetCalendarDay$Page$airingSchedules$media$coverImage? coverImage;

  final Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry?
      mediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$mediaListEntry = mediaListEntry;
    _resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$coverImage = coverImage;
    final l$mediaListEntry = mediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$coverImage,
      l$mediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCalendarDay$Page$airingSchedules$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$mediaListEntry = mediaListEntry;
    final lOther$mediaListEntry = other.mediaListEntry;
    if (l$mediaListEntry != lOther$mediaListEntry) {
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

extension UtilityExtension$Query$GetCalendarDay$Page$airingSchedules$media
    on Query$GetCalendarDay$Page$airingSchedules$media {
  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media<
          Query$GetCalendarDay$Page$airingSchedules$media>
      get copyWith => CopyWith$Query$GetCalendarDay$Page$airingSchedules$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCalendarDay$Page$airingSchedules$media<TRes> {
  factory CopyWith$Query$GetCalendarDay$Page$airingSchedules$media(
    Query$GetCalendarDay$Page$airingSchedules$media instance,
    TRes Function(Query$GetCalendarDay$Page$airingSchedules$media) then,
  ) = _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules$media;

  factory CopyWith$Query$GetCalendarDay$Page$airingSchedules$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules$media;

  TRes call({
    Query$GetCalendarDay$Page$airingSchedules$media$title? title,
    Query$GetCalendarDay$Page$airingSchedules$media$coverImage? coverImage,
    Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry?
        mediaListEntry,
    String? $__typename,
  });
  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title<TRes>
      get title;
  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage<TRes>
      get coverImage;
  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry<TRes>
      get mediaListEntry;
}

class _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules$media<TRes>
    implements CopyWith$Query$GetCalendarDay$Page$airingSchedules$media<TRes> {
  _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules$media(
    this._instance,
    this._then,
  );

  final Query$GetCalendarDay$Page$airingSchedules$media _instance;

  final TRes Function(Query$GetCalendarDay$Page$airingSchedules$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? mediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCalendarDay$Page$airingSchedules$media(
        title: title == _undefined
            ? _instance.title
            : (title as Query$GetCalendarDay$Page$airingSchedules$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$GetCalendarDay$Page$airingSchedules$media$coverImage?),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry
                as Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title.stub(
            _then(_instance))
        : CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage
            .stub(_then(_instance))
        : CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry<TRes>
      get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry
            .stub(_then(_instance))
        : CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }
}

class _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules$media<TRes>
    implements CopyWith$Query$GetCalendarDay$Page$airingSchedules$media<TRes> {
  _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules$media(this._res);

  TRes _res;

  call({
    Query$GetCalendarDay$Page$airingSchedules$media$title? title,
    Query$GetCalendarDay$Page$airingSchedules$media$coverImage? coverImage,
    Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry?
        mediaListEntry,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title<TRes>
      get title =>
          CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title.stub(
              _res);

  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage<TRes>
      get coverImage =>
          CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage
              .stub(_res);

  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry<TRes>
      get mediaListEntry =>
          CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry
              .stub(_res);
}

class Query$GetCalendarDay$Page$airingSchedules$media$title {
  Query$GetCalendarDay$Page$airingSchedules$media$title({
    this.userPreferred,
    this.english,
    this.$__typename = 'MediaTitle',
  });

  factory Query$GetCalendarDay$Page$airingSchedules$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$english = json['english'];
    final l$$__typename = json['__typename'];
    return Query$GetCalendarDay$Page$airingSchedules$media$title(
      userPreferred: (l$userPreferred as String?),
      english: (l$english as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String? english;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$english = english;
    _resultData['english'] = l$english;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$english = english;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$english,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCalendarDay$Page$airingSchedules$media$title) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$english = english;
    final lOther$english = other.english;
    if (l$english != lOther$english) {
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

extension UtilityExtension$Query$GetCalendarDay$Page$airingSchedules$media$title
    on Query$GetCalendarDay$Page$airingSchedules$media$title {
  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title<
          Query$GetCalendarDay$Page$airingSchedules$media$title>
      get copyWith =>
          CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title<
    TRes> {
  factory CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title(
    Query$GetCalendarDay$Page$airingSchedules$media$title instance,
    TRes Function(Query$GetCalendarDay$Page$airingSchedules$media$title) then,
  ) = _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules$media$title;

  factory CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules$media$title;

  TRes call({
    String? userPreferred,
    String? english,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules$media$title<TRes>
    implements
        CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title<TRes> {
  _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules$media$title(
    this._instance,
    this._then,
  );

  final Query$GetCalendarDay$Page$airingSchedules$media$title _instance;

  final TRes Function(Query$GetCalendarDay$Page$airingSchedules$media$title)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? english = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCalendarDay$Page$airingSchedules$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        english:
            english == _undefined ? _instance.english : (english as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules$media$title<
        TRes>
    implements
        CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$title<TRes> {
  _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules$media$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? english,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetCalendarDay$Page$airingSchedules$media$coverImage {
  Query$GetCalendarDay$Page$airingSchedules$media$coverImage({
    this.large,
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$GetCalendarDay$Page$airingSchedules$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Query$GetCalendarDay$Page$airingSchedules$media$coverImage(
      large: (l$large as String?),
      extraLarge: (l$extraLarge as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String? extraLarge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$extraLarge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetCalendarDay$Page$airingSchedules$media$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
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

extension UtilityExtension$Query$GetCalendarDay$Page$airingSchedules$media$coverImage
    on Query$GetCalendarDay$Page$airingSchedules$media$coverImage {
  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage<
          Query$GetCalendarDay$Page$airingSchedules$media$coverImage>
      get copyWith =>
          CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage<
    TRes> {
  factory CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage(
    Query$GetCalendarDay$Page$airingSchedules$media$coverImage instance,
    TRes Function(Query$GetCalendarDay$Page$airingSchedules$media$coverImage)
        then,
  ) = _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules$media$coverImage;

  factory CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules$media$coverImage;

  TRes call({
    String? large,
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules$media$coverImage<
        TRes>
    implements
        CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage<
            TRes> {
  _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$GetCalendarDay$Page$airingSchedules$media$coverImage _instance;

  final TRes Function(
      Query$GetCalendarDay$Page$airingSchedules$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCalendarDay$Page$airingSchedules$media$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules$media$coverImage<
        TRes>
    implements
        CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$coverImage<
            TRes> {
  _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules$media$coverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry {
  Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry({
    this.status,
    this.$__typename = 'MediaList',
  });

  factory Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry.fromJson(
      Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry(
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaListStatus? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry
    on Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry {
  CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry<
          Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry>
      get copyWith =>
          CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry<
    TRes> {
  factory CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry(
    Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry instance,
    TRes Function(
            Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry)
        then,
  ) = _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry;

  factory CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry;

  TRes call({
    Enum$MediaListStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry<
        TRes>
    implements
        CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry<
            TRes> {
  _CopyWithImpl$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry(
    this._instance,
    this._then,
  );

  final Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry
      _instance;

  final TRes Function(
      Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry(
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry<
        TRes>
    implements
        CopyWith$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry<
            TRes> {
  _CopyWithStubImpl$Query$GetCalendarDay$Page$airingSchedules$media$mediaListEntry(
      this._res);

  TRes _res;

  call({
    Enum$MediaListStatus? status,
    String? $__typename,
  }) =>
      _res;
}
