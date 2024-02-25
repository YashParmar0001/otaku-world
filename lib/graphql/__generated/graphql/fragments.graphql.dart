// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Fragment$MediaShort {
  Fragment$MediaShort({
    required this.id,
    this.title,
    this.coverImage,
    this.meanScore,
    this.favourites,
    this.format,
    this.type,
    this.episodes,
    this.chapters,
    this.status,
    this.airingSchedule,
    this.genres,
    this.season,
    this.seasonYear,
    this.startDate,
    this.endDate,
    this.mediaListEntry,
    this.$__typename = 'Media',
  });

  factory Fragment$MediaShort.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$meanScore = json['meanScore'];
    final l$favourites = json['favourites'];
    final l$format = json['format'];
    final l$type = json['type'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$status = json['status'];
    final l$airingSchedule = json['airingSchedule'];
    final l$genres = json['genres'];
    final l$season = json['season'];
    final l$seasonYear = json['seasonYear'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$mediaListEntry = json['mediaListEntry'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Fragment$MediaShort$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$MediaShort$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      meanScore: (l$meanScore as int?),
      favourites: (l$favourites as int?),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaStatus((l$status as String)),
      airingSchedule: l$airingSchedule == null
          ? null
          : Fragment$MediaShort$airingSchedule.fromJson(
              (l$airingSchedule as Map<String, dynamic>)),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      season: l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String)),
      seasonYear: (l$seasonYear as int?),
      startDate: l$startDate == null
          ? null
          : Fragment$MediaShort$startDate.fromJson(
              (l$startDate as Map<String, dynamic>)),
      endDate: l$endDate == null
          ? null
          : Fragment$MediaShort$endDate.fromJson(
              (l$endDate as Map<String, dynamic>)),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : Fragment$MediaShort$mediaListEntry.fromJson(
              (l$mediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$MediaShort$title? title;

  final Fragment$MediaShort$coverImage? coverImage;

  final int? meanScore;

  final int? favourites;

  final Enum$MediaFormat? format;

  final Enum$MediaType? type;

  final int? episodes;

  final int? chapters;

  final Enum$MediaStatus? status;

  final Fragment$MediaShort$airingSchedule? airingSchedule;

  final List<String?>? genres;

  final Enum$MediaSeason? season;

  final int? seasonYear;

  final Fragment$MediaShort$startDate? startDate;

  final Fragment$MediaShort$endDate? endDate;

  final Fragment$MediaShort$mediaListEntry? mediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
    final l$airingSchedule = airingSchedule;
    _resultData['airingSchedule'] = l$airingSchedule?.toJson();
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$season = season;
    _resultData['season'] =
        l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    final l$seasonYear = seasonYear;
    _resultData['seasonYear'] = l$seasonYear;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toJson();
    final l$mediaListEntry = mediaListEntry;
    _resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$meanScore = meanScore;
    final l$favourites = favourites;
    final l$format = format;
    final l$type = type;
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$status = status;
    final l$airingSchedule = airingSchedule;
    final l$genres = genres;
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$mediaListEntry = mediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$coverImage,
      l$meanScore,
      l$favourites,
      l$format,
      l$type,
      l$episodes,
      l$chapters,
      l$status,
      l$airingSchedule,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$season,
      l$seasonYear,
      l$startDate,
      l$endDate,
      l$mediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaShort) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$airingSchedule = airingSchedule;
    final lOther$airingSchedule = other.airingSchedule;
    if (l$airingSchedule != lOther$airingSchedule) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (l$genres != null && lOther$genres != null) {
      if (l$genres.length != lOther$genres.length) {
        return false;
      }
      for (int i = 0; i < l$genres.length; i++) {
        final l$genres$entry = l$genres[i];
        final lOther$genres$entry = lOther$genres[i];
        if (l$genres$entry != lOther$genres$entry) {
          return false;
        }
      }
    } else if (l$genres != lOther$genres) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
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

extension UtilityExtension$Fragment$MediaShort on Fragment$MediaShort {
  CopyWith$Fragment$MediaShort<Fragment$MediaShort> get copyWith =>
      CopyWith$Fragment$MediaShort(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaShort<TRes> {
  factory CopyWith$Fragment$MediaShort(
    Fragment$MediaShort instance,
    TRes Function(Fragment$MediaShort) then,
  ) = _CopyWithImpl$Fragment$MediaShort;

  factory CopyWith$Fragment$MediaShort.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort;

  TRes call({
    int? id,
    Fragment$MediaShort$title? title,
    Fragment$MediaShort$coverImage? coverImage,
    int? meanScore,
    int? favourites,
    Enum$MediaFormat? format,
    Enum$MediaType? type,
    int? episodes,
    int? chapters,
    Enum$MediaStatus? status,
    Fragment$MediaShort$airingSchedule? airingSchedule,
    List<String?>? genres,
    Enum$MediaSeason? season,
    int? seasonYear,
    Fragment$MediaShort$startDate? startDate,
    Fragment$MediaShort$endDate? endDate,
    Fragment$MediaShort$mediaListEntry? mediaListEntry,
    String? $__typename,
  });
  CopyWith$Fragment$MediaShort$title<TRes> get title;
  CopyWith$Fragment$MediaShort$coverImage<TRes> get coverImage;
  CopyWith$Fragment$MediaShort$airingSchedule<TRes> get airingSchedule;
  CopyWith$Fragment$MediaShort$startDate<TRes> get startDate;
  CopyWith$Fragment$MediaShort$endDate<TRes> get endDate;
  CopyWith$Fragment$MediaShort$mediaListEntry<TRes> get mediaListEntry;
}

class _CopyWithImpl$Fragment$MediaShort<TRes>
    implements CopyWith$Fragment$MediaShort<TRes> {
  _CopyWithImpl$Fragment$MediaShort(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort _instance;

  final TRes Function(Fragment$MediaShort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? meanScore = _undefined,
    Object? favourites = _undefined,
    Object? format = _undefined,
    Object? type = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? status = _undefined,
    Object? airingSchedule = _undefined,
    Object? genres = _undefined,
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? mediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$MediaShort$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$MediaShort$coverImage?),
        meanScore:
            meanScore == _undefined ? _instance.meanScore : (meanScore as int?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaStatus?),
        airingSchedule: airingSchedule == _undefined
            ? _instance.airingSchedule
            : (airingSchedule as Fragment$MediaShort$airingSchedule?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        season: season == _undefined
            ? _instance.season
            : (season as Enum$MediaSeason?),
        seasonYear: seasonYear == _undefined
            ? _instance.seasonYear
            : (seasonYear as int?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as Fragment$MediaShort$startDate?),
        endDate: endDate == _undefined
            ? _instance.endDate
            : (endDate as Fragment$MediaShort$endDate?),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry as Fragment$MediaShort$mediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaShort$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$MediaShort$title.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$MediaShort$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$MediaShort$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Fragment$MediaShort$airingSchedule<TRes> get airingSchedule {
    final local$airingSchedule = _instance.airingSchedule;
    return local$airingSchedule == null
        ? CopyWith$Fragment$MediaShort$airingSchedule.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort$airingSchedule(
            local$airingSchedule, (e) => call(airingSchedule: e));
  }

  CopyWith$Fragment$MediaShort$startDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Fragment$MediaShort$startDate.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort$startDate(
            local$startDate, (e) => call(startDate: e));
  }

  CopyWith$Fragment$MediaShort$endDate<TRes> get endDate {
    final local$endDate = _instance.endDate;
    return local$endDate == null
        ? CopyWith$Fragment$MediaShort$endDate.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort$endDate(
            local$endDate, (e) => call(endDate: e));
  }

  CopyWith$Fragment$MediaShort$mediaListEntry<TRes> get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWith$Fragment$MediaShort$mediaListEntry.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort$mediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaShort<TRes>
    implements CopyWith$Fragment$MediaShort<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$MediaShort$title? title,
    Fragment$MediaShort$coverImage? coverImage,
    int? meanScore,
    int? favourites,
    Enum$MediaFormat? format,
    Enum$MediaType? type,
    int? episodes,
    int? chapters,
    Enum$MediaStatus? status,
    Fragment$MediaShort$airingSchedule? airingSchedule,
    List<String?>? genres,
    Enum$MediaSeason? season,
    int? seasonYear,
    Fragment$MediaShort$startDate? startDate,
    Fragment$MediaShort$endDate? endDate,
    Fragment$MediaShort$mediaListEntry? mediaListEntry,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaShort$title<TRes> get title =>
      CopyWith$Fragment$MediaShort$title.stub(_res);

  CopyWith$Fragment$MediaShort$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$MediaShort$coverImage.stub(_res);

  CopyWith$Fragment$MediaShort$airingSchedule<TRes> get airingSchedule =>
      CopyWith$Fragment$MediaShort$airingSchedule.stub(_res);

  CopyWith$Fragment$MediaShort$startDate<TRes> get startDate =>
      CopyWith$Fragment$MediaShort$startDate.stub(_res);

  CopyWith$Fragment$MediaShort$endDate<TRes> get endDate =>
      CopyWith$Fragment$MediaShort$endDate.stub(_res);

  CopyWith$Fragment$MediaShort$mediaListEntry<TRes> get mediaListEntry =>
      CopyWith$Fragment$MediaShort$mediaListEntry.stub(_res);
}

const fragmentDefinitionMediaShort = FragmentDefinitionNode(
  name: NameNode(value: 'MediaShort'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
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
          name: NameNode(value: 'romaji'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'native'),
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
      name: NameNode(value: 'meanScore'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'favourites'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'format'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'episodes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'chapters'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'airingSchedule'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'notYetAired'),
          value: BooleanValueNode(value: true),
        ),
        ArgumentNode(
          name: NameNode(value: 'perPage'),
          value: IntValueNode(value: '1'),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'nodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
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
      name: NameNode(value: 'genres'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'season'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'seasonYear'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startDate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'day'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'month'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'year'),
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
      name: NameNode(value: 'endDate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'day'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'month'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'year'),
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
          name: NameNode(value: 'id'),
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
);
const documentNodeFragmentMediaShort = DocumentNode(definitions: [
  fragmentDefinitionMediaShort,
]);

extension ClientExtension$Fragment$MediaShort on graphql.GraphQLClient {
  void writeFragment$MediaShort({
    required Fragment$MediaShort data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MediaShort',
            document: documentNodeFragmentMediaShort,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MediaShort? readFragment$MediaShort({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MediaShort',
          document: documentNodeFragmentMediaShort,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MediaShort.fromJson(result);
  }
}

class Fragment$MediaShort$title {
  Fragment$MediaShort$title({
    this.userPreferred,
    this.english,
    this.romaji,
    this.native,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$MediaShort$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$english = json['english'];
    final l$romaji = json['romaji'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort$title(
      userPreferred: (l$userPreferred as String?),
      english: (l$english as String?),
      romaji: (l$romaji as String?),
      native: (l$native as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String? english;

  final String? romaji;

  final String? native;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$english = english;
    _resultData['english'] = l$english;
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$english = english;
    final l$romaji = romaji;
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$english,
      l$romaji,
      l$native,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaShort$title) ||
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
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) {
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

extension UtilityExtension$Fragment$MediaShort$title
    on Fragment$MediaShort$title {
  CopyWith$Fragment$MediaShort$title<Fragment$MediaShort$title> get copyWith =>
      CopyWith$Fragment$MediaShort$title(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaShort$title<TRes> {
  factory CopyWith$Fragment$MediaShort$title(
    Fragment$MediaShort$title instance,
    TRes Function(Fragment$MediaShort$title) then,
  ) = _CopyWithImpl$Fragment$MediaShort$title;

  factory CopyWith$Fragment$MediaShort$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort$title;

  TRes call({
    String? userPreferred,
    String? english,
    String? romaji,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaShort$title<TRes>
    implements CopyWith$Fragment$MediaShort$title<TRes> {
  _CopyWithImpl$Fragment$MediaShort$title(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort$title _instance;

  final TRes Function(Fragment$MediaShort$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? english = _undefined,
    Object? romaji = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        english:
            english == _undefined ? _instance.english : (english as String?),
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaShort$title<TRes>
    implements CopyWith$Fragment$MediaShort$title<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? english,
    String? romaji,
    String? native,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaShort$coverImage {
  Fragment$MediaShort$coverImage({
    this.large,
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$MediaShort$coverImage.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort$coverImage(
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
    if (!(other is Fragment$MediaShort$coverImage) ||
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

extension UtilityExtension$Fragment$MediaShort$coverImage
    on Fragment$MediaShort$coverImage {
  CopyWith$Fragment$MediaShort$coverImage<Fragment$MediaShort$coverImage>
      get copyWith => CopyWith$Fragment$MediaShort$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaShort$coverImage<TRes> {
  factory CopyWith$Fragment$MediaShort$coverImage(
    Fragment$MediaShort$coverImage instance,
    TRes Function(Fragment$MediaShort$coverImage) then,
  ) = _CopyWithImpl$Fragment$MediaShort$coverImage;

  factory CopyWith$Fragment$MediaShort$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort$coverImage;

  TRes call({
    String? large,
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaShort$coverImage<TRes>
    implements CopyWith$Fragment$MediaShort$coverImage<TRes> {
  _CopyWithImpl$Fragment$MediaShort$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort$coverImage _instance;

  final TRes Function(Fragment$MediaShort$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaShort$coverImage<TRes>
    implements CopyWith$Fragment$MediaShort$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaShort$airingSchedule {
  Fragment$MediaShort$airingSchedule({
    this.nodes,
    this.$__typename = 'AiringScheduleConnection',
  });

  factory Fragment$MediaShort$airingSchedule.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort$airingSchedule(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort$airingSchedule$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaShort$airingSchedule$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaShort$airingSchedule) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Fragment$MediaShort$airingSchedule
    on Fragment$MediaShort$airingSchedule {
  CopyWith$Fragment$MediaShort$airingSchedule<
          Fragment$MediaShort$airingSchedule>
      get copyWith => CopyWith$Fragment$MediaShort$airingSchedule(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaShort$airingSchedule<TRes> {
  factory CopyWith$Fragment$MediaShort$airingSchedule(
    Fragment$MediaShort$airingSchedule instance,
    TRes Function(Fragment$MediaShort$airingSchedule) then,
  ) = _CopyWithImpl$Fragment$MediaShort$airingSchedule;

  factory CopyWith$Fragment$MediaShort$airingSchedule.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort$airingSchedule;

  TRes call({
    List<Fragment$MediaShort$airingSchedule$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$MediaShort$airingSchedule$nodes?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaShort$airingSchedule$nodes<
                      Fragment$MediaShort$airingSchedule$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$MediaShort$airingSchedule<TRes>
    implements CopyWith$Fragment$MediaShort$airingSchedule<TRes> {
  _CopyWithImpl$Fragment$MediaShort$airingSchedule(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort$airingSchedule _instance;

  final TRes Function(Fragment$MediaShort$airingSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort$airingSchedule(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$MediaShort$airingSchedule$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$MediaShort$airingSchedule$nodes?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaShort$airingSchedule$nodes<
                          Fragment$MediaShort$airingSchedule$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaShort$airingSchedule$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$MediaShort$airingSchedule<TRes>
    implements CopyWith$Fragment$MediaShort$airingSchedule<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort$airingSchedule(this._res);

  TRes _res;

  call({
    List<Fragment$MediaShort$airingSchedule$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Fragment$MediaShort$airingSchedule$nodes {
  Fragment$MediaShort$airingSchedule$nodes({
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Fragment$MediaShort$airingSchedule$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort$airingSchedule$nodes(
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (!(other is Fragment$MediaShort$airingSchedule$nodes) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$MediaShort$airingSchedule$nodes
    on Fragment$MediaShort$airingSchedule$nodes {
  CopyWith$Fragment$MediaShort$airingSchedule$nodes<
          Fragment$MediaShort$airingSchedule$nodes>
      get copyWith => CopyWith$Fragment$MediaShort$airingSchedule$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaShort$airingSchedule$nodes<TRes> {
  factory CopyWith$Fragment$MediaShort$airingSchedule$nodes(
    Fragment$MediaShort$airingSchedule$nodes instance,
    TRes Function(Fragment$MediaShort$airingSchedule$nodes) then,
  ) = _CopyWithImpl$Fragment$MediaShort$airingSchedule$nodes;

  factory CopyWith$Fragment$MediaShort$airingSchedule$nodes.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort$airingSchedule$nodes;

  TRes call({
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaShort$airingSchedule$nodes<TRes>
    implements CopyWith$Fragment$MediaShort$airingSchedule$nodes<TRes> {
  _CopyWithImpl$Fragment$MediaShort$airingSchedule$nodes(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort$airingSchedule$nodes _instance;

  final TRes Function(Fragment$MediaShort$airingSchedule$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort$airingSchedule$nodes(
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
}

class _CopyWithStubImpl$Fragment$MediaShort$airingSchedule$nodes<TRes>
    implements CopyWith$Fragment$MediaShort$airingSchedule$nodes<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort$airingSchedule$nodes(this._res);

  TRes _res;

  call({
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaShort$startDate {
  Fragment$MediaShort$startDate({
    this.day,
    this.month,
    this.year,
    this.$__typename = 'FuzzyDate',
  });

  factory Fragment$MediaShort$startDate.fromJson(Map<String, dynamic> json) {
    final l$day = json['day'];
    final l$month = json['month'];
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort$startDate(
      day: (l$day as int?),
      month: (l$month as int?),
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? day;

  final int? month;

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$day = day;
    _resultData['day'] = l$day;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$month = month;
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$day,
      l$month,
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaShort$startDate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Fragment$MediaShort$startDate
    on Fragment$MediaShort$startDate {
  CopyWith$Fragment$MediaShort$startDate<Fragment$MediaShort$startDate>
      get copyWith => CopyWith$Fragment$MediaShort$startDate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaShort$startDate<TRes> {
  factory CopyWith$Fragment$MediaShort$startDate(
    Fragment$MediaShort$startDate instance,
    TRes Function(Fragment$MediaShort$startDate) then,
  ) = _CopyWithImpl$Fragment$MediaShort$startDate;

  factory CopyWith$Fragment$MediaShort$startDate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort$startDate;

  TRes call({
    int? day,
    int? month,
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaShort$startDate<TRes>
    implements CopyWith$Fragment$MediaShort$startDate<TRes> {
  _CopyWithImpl$Fragment$MediaShort$startDate(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort$startDate _instance;

  final TRes Function(Fragment$MediaShort$startDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? month = _undefined,
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort$startDate(
        day: day == _undefined ? _instance.day : (day as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaShort$startDate<TRes>
    implements CopyWith$Fragment$MediaShort$startDate<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort$startDate(this._res);

  TRes _res;

  call({
    int? day,
    int? month,
    int? year,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaShort$endDate {
  Fragment$MediaShort$endDate({
    this.day,
    this.month,
    this.year,
    this.$__typename = 'FuzzyDate',
  });

  factory Fragment$MediaShort$endDate.fromJson(Map<String, dynamic> json) {
    final l$day = json['day'];
    final l$month = json['month'];
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort$endDate(
      day: (l$day as int?),
      month: (l$month as int?),
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? day;

  final int? month;

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$day = day;
    _resultData['day'] = l$day;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$month = month;
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$day,
      l$month,
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaShort$endDate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Fragment$MediaShort$endDate
    on Fragment$MediaShort$endDate {
  CopyWith$Fragment$MediaShort$endDate<Fragment$MediaShort$endDate>
      get copyWith => CopyWith$Fragment$MediaShort$endDate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaShort$endDate<TRes> {
  factory CopyWith$Fragment$MediaShort$endDate(
    Fragment$MediaShort$endDate instance,
    TRes Function(Fragment$MediaShort$endDate) then,
  ) = _CopyWithImpl$Fragment$MediaShort$endDate;

  factory CopyWith$Fragment$MediaShort$endDate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort$endDate;

  TRes call({
    int? day,
    int? month,
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaShort$endDate<TRes>
    implements CopyWith$Fragment$MediaShort$endDate<TRes> {
  _CopyWithImpl$Fragment$MediaShort$endDate(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort$endDate _instance;

  final TRes Function(Fragment$MediaShort$endDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? month = _undefined,
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort$endDate(
        day: day == _undefined ? _instance.day : (day as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaShort$endDate<TRes>
    implements CopyWith$Fragment$MediaShort$endDate<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort$endDate(this._res);

  TRes _res;

  call({
    int? day,
    int? month,
    int? year,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaShort$mediaListEntry {
  Fragment$MediaShort$mediaListEntry({
    required this.id,
    this.$__typename = 'MediaList',
  });

  factory Fragment$MediaShort$mediaListEntry.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort$mediaListEntry(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaShort$mediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Fragment$MediaShort$mediaListEntry
    on Fragment$MediaShort$mediaListEntry {
  CopyWith$Fragment$MediaShort$mediaListEntry<
          Fragment$MediaShort$mediaListEntry>
      get copyWith => CopyWith$Fragment$MediaShort$mediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaShort$mediaListEntry<TRes> {
  factory CopyWith$Fragment$MediaShort$mediaListEntry(
    Fragment$MediaShort$mediaListEntry instance,
    TRes Function(Fragment$MediaShort$mediaListEntry) then,
  ) = _CopyWithImpl$Fragment$MediaShort$mediaListEntry;

  factory CopyWith$Fragment$MediaShort$mediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort$mediaListEntry;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaShort$mediaListEntry<TRes>
    implements CopyWith$Fragment$MediaShort$mediaListEntry<TRes> {
  _CopyWithImpl$Fragment$MediaShort$mediaListEntry(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort$mediaListEntry _instance;

  final TRes Function(Fragment$MediaShort$mediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort$mediaListEntry(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaShort$mediaListEntry<TRes>
    implements CopyWith$Fragment$MediaShort$mediaListEntry<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort$mediaListEntry(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultMedia {
  Fragment$SearchResultMedia({
    required this.id,
    this.coverImage,
    this.title,
    this.type,
    this.startDate,
    this.format,
    this.meanScore,
    this.$__typename = 'Media',
  });

  factory Fragment$SearchResultMedia.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$startDate = json['startDate'];
    final l$format = json['format'];
    final l$meanScore = json['meanScore'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultMedia(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : Fragment$SearchResultMedia$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      title: l$title == null
          ? null
          : Fragment$SearchResultMedia$title.fromJson(
              (l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      startDate: l$startDate == null
          ? null
          : Fragment$SearchResultMedia$startDate.fromJson(
              (l$startDate as Map<String, dynamic>)),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      meanScore: (l$meanScore as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$SearchResultMedia$coverImage? coverImage;

  final Fragment$SearchResultMedia$title? title;

  final Enum$MediaType? type;

  final Fragment$SearchResultMedia$startDate? startDate;

  final Enum$MediaFormat? format;

  final int? meanScore;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverImage = coverImage;
    final l$title = title;
    final l$type = type;
    final l$startDate = startDate;
    final l$format = format;
    final l$meanScore = meanScore;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverImage,
      l$title,
      l$type,
      l$startDate,
      l$format,
      l$meanScore,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultMedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
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

extension UtilityExtension$Fragment$SearchResultMedia
    on Fragment$SearchResultMedia {
  CopyWith$Fragment$SearchResultMedia<Fragment$SearchResultMedia>
      get copyWith => CopyWith$Fragment$SearchResultMedia(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultMedia<TRes> {
  factory CopyWith$Fragment$SearchResultMedia(
    Fragment$SearchResultMedia instance,
    TRes Function(Fragment$SearchResultMedia) then,
  ) = _CopyWithImpl$Fragment$SearchResultMedia;

  factory CopyWith$Fragment$SearchResultMedia.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultMedia;

  TRes call({
    int? id,
    Fragment$SearchResultMedia$coverImage? coverImage,
    Fragment$SearchResultMedia$title? title,
    Enum$MediaType? type,
    Fragment$SearchResultMedia$startDate? startDate,
    Enum$MediaFormat? format,
    int? meanScore,
    String? $__typename,
  });
  CopyWith$Fragment$SearchResultMedia$coverImage<TRes> get coverImage;
  CopyWith$Fragment$SearchResultMedia$title<TRes> get title;
  CopyWith$Fragment$SearchResultMedia$startDate<TRes> get startDate;
}

class _CopyWithImpl$Fragment$SearchResultMedia<TRes>
    implements CopyWith$Fragment$SearchResultMedia<TRes> {
  _CopyWithImpl$Fragment$SearchResultMedia(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultMedia _instance;

  final TRes Function(Fragment$SearchResultMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverImage = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? startDate = _undefined,
    Object? format = _undefined,
    Object? meanScore = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultMedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$SearchResultMedia$coverImage?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$SearchResultMedia$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as Fragment$SearchResultMedia$startDate?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        meanScore:
            meanScore == _undefined ? _instance.meanScore : (meanScore as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SearchResultMedia$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$SearchResultMedia$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultMedia$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Fragment$SearchResultMedia$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$SearchResultMedia$title.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultMedia$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$SearchResultMedia$startDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Fragment$SearchResultMedia$startDate.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultMedia$startDate(
            local$startDate, (e) => call(startDate: e));
  }
}

class _CopyWithStubImpl$Fragment$SearchResultMedia<TRes>
    implements CopyWith$Fragment$SearchResultMedia<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultMedia(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$SearchResultMedia$coverImage? coverImage,
    Fragment$SearchResultMedia$title? title,
    Enum$MediaType? type,
    Fragment$SearchResultMedia$startDate? startDate,
    Enum$MediaFormat? format,
    int? meanScore,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SearchResultMedia$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$SearchResultMedia$coverImage.stub(_res);

  CopyWith$Fragment$SearchResultMedia$title<TRes> get title =>
      CopyWith$Fragment$SearchResultMedia$title.stub(_res);

  CopyWith$Fragment$SearchResultMedia$startDate<TRes> get startDate =>
      CopyWith$Fragment$SearchResultMedia$startDate.stub(_res);
}

const fragmentDefinitionSearchResultMedia = FragmentDefinitionNode(
  name: NameNode(value: 'SearchResultMedia'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
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
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
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
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startDate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'year'),
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
      name: NameNode(value: 'format'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'meanScore'),
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
);
const documentNodeFragmentSearchResultMedia = DocumentNode(definitions: [
  fragmentDefinitionSearchResultMedia,
]);

extension ClientExtension$Fragment$SearchResultMedia on graphql.GraphQLClient {
  void writeFragment$SearchResultMedia({
    required Fragment$SearchResultMedia data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SearchResultMedia',
            document: documentNodeFragmentSearchResultMedia,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SearchResultMedia? readFragment$SearchResultMedia({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SearchResultMedia',
          document: documentNodeFragmentSearchResultMedia,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$SearchResultMedia.fromJson(result);
  }
}

class Fragment$SearchResultMedia$coverImage {
  Fragment$SearchResultMedia$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$SearchResultMedia$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultMedia$coverImage(
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
    if (!(other is Fragment$SearchResultMedia$coverImage) ||
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

extension UtilityExtension$Fragment$SearchResultMedia$coverImage
    on Fragment$SearchResultMedia$coverImage {
  CopyWith$Fragment$SearchResultMedia$coverImage<
          Fragment$SearchResultMedia$coverImage>
      get copyWith => CopyWith$Fragment$SearchResultMedia$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultMedia$coverImage<TRes> {
  factory CopyWith$Fragment$SearchResultMedia$coverImage(
    Fragment$SearchResultMedia$coverImage instance,
    TRes Function(Fragment$SearchResultMedia$coverImage) then,
  ) = _CopyWithImpl$Fragment$SearchResultMedia$coverImage;

  factory CopyWith$Fragment$SearchResultMedia$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultMedia$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultMedia$coverImage<TRes>
    implements CopyWith$Fragment$SearchResultMedia$coverImage<TRes> {
  _CopyWithImpl$Fragment$SearchResultMedia$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultMedia$coverImage _instance;

  final TRes Function(Fragment$SearchResultMedia$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultMedia$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultMedia$coverImage<TRes>
    implements CopyWith$Fragment$SearchResultMedia$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultMedia$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultMedia$title {
  Fragment$SearchResultMedia$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$SearchResultMedia$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultMedia$title(
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
    if (!(other is Fragment$SearchResultMedia$title) ||
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

extension UtilityExtension$Fragment$SearchResultMedia$title
    on Fragment$SearchResultMedia$title {
  CopyWith$Fragment$SearchResultMedia$title<Fragment$SearchResultMedia$title>
      get copyWith => CopyWith$Fragment$SearchResultMedia$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultMedia$title<TRes> {
  factory CopyWith$Fragment$SearchResultMedia$title(
    Fragment$SearchResultMedia$title instance,
    TRes Function(Fragment$SearchResultMedia$title) then,
  ) = _CopyWithImpl$Fragment$SearchResultMedia$title;

  factory CopyWith$Fragment$SearchResultMedia$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultMedia$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultMedia$title<TRes>
    implements CopyWith$Fragment$SearchResultMedia$title<TRes> {
  _CopyWithImpl$Fragment$SearchResultMedia$title(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultMedia$title _instance;

  final TRes Function(Fragment$SearchResultMedia$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultMedia$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultMedia$title<TRes>
    implements CopyWith$Fragment$SearchResultMedia$title<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultMedia$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultMedia$startDate {
  Fragment$SearchResultMedia$startDate({
    this.year,
    this.$__typename = 'FuzzyDate',
  });

  factory Fragment$SearchResultMedia$startDate.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultMedia$startDate(
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultMedia$startDate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Fragment$SearchResultMedia$startDate
    on Fragment$SearchResultMedia$startDate {
  CopyWith$Fragment$SearchResultMedia$startDate<
          Fragment$SearchResultMedia$startDate>
      get copyWith => CopyWith$Fragment$SearchResultMedia$startDate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultMedia$startDate<TRes> {
  factory CopyWith$Fragment$SearchResultMedia$startDate(
    Fragment$SearchResultMedia$startDate instance,
    TRes Function(Fragment$SearchResultMedia$startDate) then,
  ) = _CopyWithImpl$Fragment$SearchResultMedia$startDate;

  factory CopyWith$Fragment$SearchResultMedia$startDate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultMedia$startDate;

  TRes call({
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultMedia$startDate<TRes>
    implements CopyWith$Fragment$SearchResultMedia$startDate<TRes> {
  _CopyWithImpl$Fragment$SearchResultMedia$startDate(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultMedia$startDate _instance;

  final TRes Function(Fragment$SearchResultMedia$startDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultMedia$startDate(
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultMedia$startDate<TRes>
    implements CopyWith$Fragment$SearchResultMedia$startDate<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultMedia$startDate(this._res);

  TRes _res;

  call({
    int? year,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Review {
  Fragment$Review({
    required this.id,
    this.summary,
    this.userRating,
    this.rating,
    this.score,
    required this.createdAt,
    required this.updatedAt,
    this.body,
    this.user,
    this.media,
    this.$__typename = 'Review',
  });

  factory Fragment$Review.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$summary = json['summary'];
    final l$userRating = json['userRating'];
    final l$rating = json['rating'];
    final l$score = json['score'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$body = json['body'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$Review(
      id: (l$id as int),
      summary: (l$summary as String?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$ReviewRating((l$userRating as String)),
      rating: (l$rating as int?),
      score: (l$score as int?),
      createdAt: (l$createdAt as int),
      updatedAt: (l$updatedAt as int),
      body: (l$body as String?),
      user: l$user == null
          ? null
          : Fragment$Review$user.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Fragment$Review$media.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? summary;

  final Enum$ReviewRating? userRating;

  final int? rating;

  final int? score;

  final int createdAt;

  final int updatedAt;

  final String? body;

  final Fragment$Review$user? user;

  final Fragment$Review$media? media;

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
    final l$score = score;
    _resultData['score'] = l$score;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$body = body;
    _resultData['body'] = l$body;
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
    final l$score = score;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$body = body;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$summary,
      l$userRating,
      l$rating,
      l$score,
      l$createdAt,
      l$updatedAt,
      l$body,
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
    if (!(other is Fragment$Review) || runtimeType != other.runtimeType) {
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
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
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
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
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

extension UtilityExtension$Fragment$Review on Fragment$Review {
  CopyWith$Fragment$Review<Fragment$Review> get copyWith =>
      CopyWith$Fragment$Review(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Review<TRes> {
  factory CopyWith$Fragment$Review(
    Fragment$Review instance,
    TRes Function(Fragment$Review) then,
  ) = _CopyWithImpl$Fragment$Review;

  factory CopyWith$Fragment$Review.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Review;

  TRes call({
    int? id,
    String? summary,
    Enum$ReviewRating? userRating,
    int? rating,
    int? score,
    int? createdAt,
    int? updatedAt,
    String? body,
    Fragment$Review$user? user,
    Fragment$Review$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$Review$user<TRes> get user;
  CopyWith$Fragment$Review$media<TRes> get media;
}

class _CopyWithImpl$Fragment$Review<TRes>
    implements CopyWith$Fragment$Review<TRes> {
  _CopyWithImpl$Fragment$Review(
    this._instance,
    this._then,
  );

  final Fragment$Review _instance;

  final TRes Function(Fragment$Review) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? summary = _undefined,
    Object? userRating = _undefined,
    Object? rating = _undefined,
    Object? score = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? body = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Review(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$ReviewRating?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        score: score == _undefined ? _instance.score : (score as int?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as int),
        body: body == _undefined ? _instance.body : (body as String?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$Review$user?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$Review$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Review$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$Review$user.stub(_then(_instance))
        : CopyWith$Fragment$Review$user(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$Review$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$Review$media.stub(_then(_instance))
        : CopyWith$Fragment$Review$media(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$Review<TRes>
    implements CopyWith$Fragment$Review<TRes> {
  _CopyWithStubImpl$Fragment$Review(this._res);

  TRes _res;

  call({
    int? id,
    String? summary,
    Enum$ReviewRating? userRating,
    int? rating,
    int? score,
    int? createdAt,
    int? updatedAt,
    String? body,
    Fragment$Review$user? user,
    Fragment$Review$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Review$user<TRes> get user =>
      CopyWith$Fragment$Review$user.stub(_res);

  CopyWith$Fragment$Review$media<TRes> get media =>
      CopyWith$Fragment$Review$media.stub(_res);
}

const fragmentDefinitionReview = FragmentDefinitionNode(
  name: NameNode(value: 'Review'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Review'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'score'),
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
      name: NameNode(value: 'body'),
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
              name: NameNode(value: 'medium'),
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
);
const documentNodeFragmentReview = DocumentNode(definitions: [
  fragmentDefinitionReview,
]);

extension ClientExtension$Fragment$Review on graphql.GraphQLClient {
  void writeFragment$Review({
    required Fragment$Review data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Review',
            document: documentNodeFragmentReview,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Review? readFragment$Review({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Review',
          document: documentNodeFragmentReview,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Review.fromJson(result);
  }
}

class Fragment$Review$user {
  Fragment$Review$user({
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Fragment$Review$user.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Fragment$Review$user(
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Fragment$Review$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Fragment$Review$user$avatar? avatar;

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
    if (!(other is Fragment$Review$user) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Review$user on Fragment$Review$user {
  CopyWith$Fragment$Review$user<Fragment$Review$user> get copyWith =>
      CopyWith$Fragment$Review$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Review$user<TRes> {
  factory CopyWith$Fragment$Review$user(
    Fragment$Review$user instance,
    TRes Function(Fragment$Review$user) then,
  ) = _CopyWithImpl$Fragment$Review$user;

  factory CopyWith$Fragment$Review$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Review$user;

  TRes call({
    String? name,
    Fragment$Review$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Fragment$Review$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$Review$user<TRes>
    implements CopyWith$Fragment$Review$user<TRes> {
  _CopyWithImpl$Fragment$Review$user(
    this._instance,
    this._then,
  );

  final Fragment$Review$user _instance;

  final TRes Function(Fragment$Review$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Review$user(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$Review$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Review$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$Review$user$avatar.stub(_then(_instance))
        : CopyWith$Fragment$Review$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$Review$user<TRes>
    implements CopyWith$Fragment$Review$user<TRes> {
  _CopyWithStubImpl$Fragment$Review$user(this._res);

  TRes _res;

  call({
    String? name,
    Fragment$Review$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Review$user$avatar<TRes> get avatar =>
      CopyWith$Fragment$Review$user$avatar.stub(_res);
}

class Fragment$Review$user$avatar {
  Fragment$Review$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$Review$user$avatar.fromJson(Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$Review$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Review$user$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
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

extension UtilityExtension$Fragment$Review$user$avatar
    on Fragment$Review$user$avatar {
  CopyWith$Fragment$Review$user$avatar<Fragment$Review$user$avatar>
      get copyWith => CopyWith$Fragment$Review$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Review$user$avatar<TRes> {
  factory CopyWith$Fragment$Review$user$avatar(
    Fragment$Review$user$avatar instance,
    TRes Function(Fragment$Review$user$avatar) then,
  ) = _CopyWithImpl$Fragment$Review$user$avatar;

  factory CopyWith$Fragment$Review$user$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Review$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Review$user$avatar<TRes>
    implements CopyWith$Fragment$Review$user$avatar<TRes> {
  _CopyWithImpl$Fragment$Review$user$avatar(
    this._instance,
    this._then,
  );

  final Fragment$Review$user$avatar _instance;

  final TRes Function(Fragment$Review$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Review$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Review$user$avatar<TRes>
    implements CopyWith$Fragment$Review$user$avatar<TRes> {
  _CopyWithStubImpl$Fragment$Review$user$avatar(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Review$media {
  Fragment$Review$media({
    this.bannerImage,
    this.title,
    this.$__typename = 'Media',
  });

  factory Fragment$Review$media.fromJson(Map<String, dynamic> json) {
    final l$bannerImage = json['bannerImage'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Fragment$Review$media(
      bannerImage: (l$bannerImage as String?),
      title: l$title == null
          ? null
          : Fragment$Review$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? bannerImage;

  final Fragment$Review$media$title? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$bannerImage = bannerImage;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (!(other is Fragment$Review$media) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Review$media on Fragment$Review$media {
  CopyWith$Fragment$Review$media<Fragment$Review$media> get copyWith =>
      CopyWith$Fragment$Review$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Review$media<TRes> {
  factory CopyWith$Fragment$Review$media(
    Fragment$Review$media instance,
    TRes Function(Fragment$Review$media) then,
  ) = _CopyWithImpl$Fragment$Review$media;

  factory CopyWith$Fragment$Review$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Review$media;

  TRes call({
    String? bannerImage,
    Fragment$Review$media$title? title,
    String? $__typename,
  });
  CopyWith$Fragment$Review$media$title<TRes> get title;
}

class _CopyWithImpl$Fragment$Review$media<TRes>
    implements CopyWith$Fragment$Review$media<TRes> {
  _CopyWithImpl$Fragment$Review$media(
    this._instance,
    this._then,
  );

  final Fragment$Review$media _instance;

  final TRes Function(Fragment$Review$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bannerImage = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Review$media(
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$Review$media$title?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Review$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$Review$media$title.stub(_then(_instance))
        : CopyWith$Fragment$Review$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Fragment$Review$media<TRes>
    implements CopyWith$Fragment$Review$media<TRes> {
  _CopyWithStubImpl$Fragment$Review$media(this._res);

  TRes _res;

  call({
    String? bannerImage,
    Fragment$Review$media$title? title,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Review$media$title<TRes> get title =>
      CopyWith$Fragment$Review$media$title.stub(_res);
}

class Fragment$Review$media$title {
  Fragment$Review$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$Review$media$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$Review$media$title(
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
    if (!(other is Fragment$Review$media$title) ||
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

extension UtilityExtension$Fragment$Review$media$title
    on Fragment$Review$media$title {
  CopyWith$Fragment$Review$media$title<Fragment$Review$media$title>
      get copyWith => CopyWith$Fragment$Review$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Review$media$title<TRes> {
  factory CopyWith$Fragment$Review$media$title(
    Fragment$Review$media$title instance,
    TRes Function(Fragment$Review$media$title) then,
  ) = _CopyWithImpl$Fragment$Review$media$title;

  factory CopyWith$Fragment$Review$media$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Review$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Review$media$title<TRes>
    implements CopyWith$Fragment$Review$media$title<TRes> {
  _CopyWithImpl$Fragment$Review$media$title(
    this._instance,
    this._then,
  );

  final Fragment$Review$media$title _instance;

  final TRes Function(Fragment$Review$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Review$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Review$media$title<TRes>
    implements CopyWith$Fragment$Review$media$title<TRes> {
  _CopyWithStubImpl$Fragment$Review$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReviewDetail {
  Fragment$ReviewDetail({
    required this.id,
    this.summary,
    this.userRating,
    this.rating,
    this.ratingAmount,
    this.body,
    this.score,
    required this.mediaId,
    this.mediaType,
    required this.createdAt,
    required this.updatedAt,
    this.user,
    this.media,
    this.$__typename = 'Review',
  });

  factory Fragment$ReviewDetail.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$summary = json['summary'];
    final l$userRating = json['userRating'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$body = json['body'];
    final l$score = json['score'];
    final l$mediaId = json['mediaId'];
    final l$mediaType = json['mediaType'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewDetail(
      id: (l$id as int),
      summary: (l$summary as String?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$ReviewRating((l$userRating as String)),
      rating: (l$rating as int?),
      ratingAmount: (l$ratingAmount as int?),
      body: (l$body as String?),
      score: (l$score as int?),
      mediaId: (l$mediaId as int),
      mediaType: l$mediaType == null
          ? null
          : fromJson$Enum$MediaType((l$mediaType as String)),
      createdAt: (l$createdAt as int),
      updatedAt: (l$updatedAt as int),
      user: l$user == null
          ? null
          : Fragment$ReviewDetail$user.fromJson(
              (l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Fragment$ReviewDetail$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? summary;

  final Enum$ReviewRating? userRating;

  final int? rating;

  final int? ratingAmount;

  final String? body;

  final int? score;

  final int mediaId;

  final Enum$MediaType? mediaType;

  final int createdAt;

  final int updatedAt;

  final Fragment$ReviewDetail$user? user;

  final Fragment$ReviewDetail$media? media;

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
    final l$body = body;
    _resultData['body'] = l$body;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$mediaId = mediaId;
    _resultData['mediaId'] = l$mediaId;
    final l$mediaType = mediaType;
    _resultData['mediaType'] =
        l$mediaType == null ? null : toJson$Enum$MediaType(l$mediaType);
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
    final l$body = body;
    final l$score = score;
    final l$mediaId = mediaId;
    final l$mediaType = mediaType;
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
      l$body,
      l$score,
      l$mediaId,
      l$mediaType,
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
    if (!(other is Fragment$ReviewDetail) || runtimeType != other.runtimeType) {
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
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (l$mediaType != lOther$mediaType) {
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

extension UtilityExtension$Fragment$ReviewDetail on Fragment$ReviewDetail {
  CopyWith$Fragment$ReviewDetail<Fragment$ReviewDetail> get copyWith =>
      CopyWith$Fragment$ReviewDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ReviewDetail<TRes> {
  factory CopyWith$Fragment$ReviewDetail(
    Fragment$ReviewDetail instance,
    TRes Function(Fragment$ReviewDetail) then,
  ) = _CopyWithImpl$Fragment$ReviewDetail;

  factory CopyWith$Fragment$ReviewDetail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewDetail;

  TRes call({
    int? id,
    String? summary,
    Enum$ReviewRating? userRating,
    int? rating,
    int? ratingAmount,
    String? body,
    int? score,
    int? mediaId,
    Enum$MediaType? mediaType,
    int? createdAt,
    int? updatedAt,
    Fragment$ReviewDetail$user? user,
    Fragment$ReviewDetail$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$ReviewDetail$user<TRes> get user;
  CopyWith$Fragment$ReviewDetail$media<TRes> get media;
}

class _CopyWithImpl$Fragment$ReviewDetail<TRes>
    implements CopyWith$Fragment$ReviewDetail<TRes> {
  _CopyWithImpl$Fragment$ReviewDetail(
    this._instance,
    this._then,
  );

  final Fragment$ReviewDetail _instance;

  final TRes Function(Fragment$ReviewDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? summary = _undefined,
    Object? userRating = _undefined,
    Object? rating = _undefined,
    Object? ratingAmount = _undefined,
    Object? body = _undefined,
    Object? score = _undefined,
    Object? mediaId = _undefined,
    Object? mediaType = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewDetail(
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
        body: body == _undefined ? _instance.body : (body as String?),
        score: score == _undefined ? _instance.score : (score as int?),
        mediaId: mediaId == _undefined || mediaId == null
            ? _instance.mediaId
            : (mediaId as int),
        mediaType: mediaType == _undefined
            ? _instance.mediaType
            : (mediaType as Enum$MediaType?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$ReviewDetail$user?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$ReviewDetail$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ReviewDetail$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$ReviewDetail$user.stub(_then(_instance))
        : CopyWith$Fragment$ReviewDetail$user(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$ReviewDetail$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$ReviewDetail$media.stub(_then(_instance))
        : CopyWith$Fragment$ReviewDetail$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$ReviewDetail<TRes>
    implements CopyWith$Fragment$ReviewDetail<TRes> {
  _CopyWithStubImpl$Fragment$ReviewDetail(this._res);

  TRes _res;

  call({
    int? id,
    String? summary,
    Enum$ReviewRating? userRating,
    int? rating,
    int? ratingAmount,
    String? body,
    int? score,
    int? mediaId,
    Enum$MediaType? mediaType,
    int? createdAt,
    int? updatedAt,
    Fragment$ReviewDetail$user? user,
    Fragment$ReviewDetail$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ReviewDetail$user<TRes> get user =>
      CopyWith$Fragment$ReviewDetail$user.stub(_res);

  CopyWith$Fragment$ReviewDetail$media<TRes> get media =>
      CopyWith$Fragment$ReviewDetail$media.stub(_res);
}

const fragmentDefinitionReviewDetail = FragmentDefinitionNode(
  name: NameNode(value: 'ReviewDetail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Review'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'body'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'score'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'mediaId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'mediaType'),
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
              name: NameNode(value: 'medium'),
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
          name: NameNode(value: 'coverImage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentReviewDetail = DocumentNode(definitions: [
  fragmentDefinitionReviewDetail,
]);

extension ClientExtension$Fragment$ReviewDetail on graphql.GraphQLClient {
  void writeFragment$ReviewDetail({
    required Fragment$ReviewDetail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ReviewDetail',
            document: documentNodeFragmentReviewDetail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ReviewDetail? readFragment$ReviewDetail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ReviewDetail',
          document: documentNodeFragmentReviewDetail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ReviewDetail.fromJson(result);
  }
}

class Fragment$ReviewDetail$user {
  Fragment$ReviewDetail$user({
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Fragment$ReviewDetail$user.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewDetail$user(
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Fragment$ReviewDetail$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Fragment$ReviewDetail$user$avatar? avatar;

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
    if (!(other is Fragment$ReviewDetail$user) ||
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

extension UtilityExtension$Fragment$ReviewDetail$user
    on Fragment$ReviewDetail$user {
  CopyWith$Fragment$ReviewDetail$user<Fragment$ReviewDetail$user>
      get copyWith => CopyWith$Fragment$ReviewDetail$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReviewDetail$user<TRes> {
  factory CopyWith$Fragment$ReviewDetail$user(
    Fragment$ReviewDetail$user instance,
    TRes Function(Fragment$ReviewDetail$user) then,
  ) = _CopyWithImpl$Fragment$ReviewDetail$user;

  factory CopyWith$Fragment$ReviewDetail$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewDetail$user;

  TRes call({
    String? name,
    Fragment$ReviewDetail$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Fragment$ReviewDetail$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$ReviewDetail$user<TRes>
    implements CopyWith$Fragment$ReviewDetail$user<TRes> {
  _CopyWithImpl$Fragment$ReviewDetail$user(
    this._instance,
    this._then,
  );

  final Fragment$ReviewDetail$user _instance;

  final TRes Function(Fragment$ReviewDetail$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewDetail$user(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$ReviewDetail$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ReviewDetail$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$ReviewDetail$user$avatar.stub(_then(_instance))
        : CopyWith$Fragment$ReviewDetail$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$ReviewDetail$user<TRes>
    implements CopyWith$Fragment$ReviewDetail$user<TRes> {
  _CopyWithStubImpl$Fragment$ReviewDetail$user(this._res);

  TRes _res;

  call({
    String? name,
    Fragment$ReviewDetail$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ReviewDetail$user$avatar<TRes> get avatar =>
      CopyWith$Fragment$ReviewDetail$user$avatar.stub(_res);
}

class Fragment$ReviewDetail$user$avatar {
  Fragment$ReviewDetail$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$ReviewDetail$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewDetail$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReviewDetail$user$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
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

extension UtilityExtension$Fragment$ReviewDetail$user$avatar
    on Fragment$ReviewDetail$user$avatar {
  CopyWith$Fragment$ReviewDetail$user$avatar<Fragment$ReviewDetail$user$avatar>
      get copyWith => CopyWith$Fragment$ReviewDetail$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReviewDetail$user$avatar<TRes> {
  factory CopyWith$Fragment$ReviewDetail$user$avatar(
    Fragment$ReviewDetail$user$avatar instance,
    TRes Function(Fragment$ReviewDetail$user$avatar) then,
  ) = _CopyWithImpl$Fragment$ReviewDetail$user$avatar;

  factory CopyWith$Fragment$ReviewDetail$user$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewDetail$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReviewDetail$user$avatar<TRes>
    implements CopyWith$Fragment$ReviewDetail$user$avatar<TRes> {
  _CopyWithImpl$Fragment$ReviewDetail$user$avatar(
    this._instance,
    this._then,
  );

  final Fragment$ReviewDetail$user$avatar _instance;

  final TRes Function(Fragment$ReviewDetail$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewDetail$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReviewDetail$user$avatar<TRes>
    implements CopyWith$Fragment$ReviewDetail$user$avatar<TRes> {
  _CopyWithStubImpl$Fragment$ReviewDetail$user$avatar(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReviewDetail$media {
  Fragment$ReviewDetail$media({
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$ReviewDetail$media.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewDetail$media(
      title: l$title == null
          ? null
          : Fragment$ReviewDetail$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$ReviewDetail$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ReviewDetail$media$title? title;

  final Fragment$ReviewDetail$media$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReviewDetail$media) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ReviewDetail$media
    on Fragment$ReviewDetail$media {
  CopyWith$Fragment$ReviewDetail$media<Fragment$ReviewDetail$media>
      get copyWith => CopyWith$Fragment$ReviewDetail$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReviewDetail$media<TRes> {
  factory CopyWith$Fragment$ReviewDetail$media(
    Fragment$ReviewDetail$media instance,
    TRes Function(Fragment$ReviewDetail$media) then,
  ) = _CopyWithImpl$Fragment$ReviewDetail$media;

  factory CopyWith$Fragment$ReviewDetail$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewDetail$media;

  TRes call({
    Fragment$ReviewDetail$media$title? title,
    Fragment$ReviewDetail$media$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Fragment$ReviewDetail$media$title<TRes> get title;
  CopyWith$Fragment$ReviewDetail$media$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Fragment$ReviewDetail$media<TRes>
    implements CopyWith$Fragment$ReviewDetail$media<TRes> {
  _CopyWithImpl$Fragment$ReviewDetail$media(
    this._instance,
    this._then,
  );

  final Fragment$ReviewDetail$media _instance;

  final TRes Function(Fragment$ReviewDetail$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewDetail$media(
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$ReviewDetail$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$ReviewDetail$media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ReviewDetail$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$ReviewDetail$media$title.stub(_then(_instance))
        : CopyWith$Fragment$ReviewDetail$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$ReviewDetail$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$ReviewDetail$media$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$ReviewDetail$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$ReviewDetail$media<TRes>
    implements CopyWith$Fragment$ReviewDetail$media<TRes> {
  _CopyWithStubImpl$Fragment$ReviewDetail$media(this._res);

  TRes _res;

  call({
    Fragment$ReviewDetail$media$title? title,
    Fragment$ReviewDetail$media$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ReviewDetail$media$title<TRes> get title =>
      CopyWith$Fragment$ReviewDetail$media$title.stub(_res);

  CopyWith$Fragment$ReviewDetail$media$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$ReviewDetail$media$coverImage.stub(_res);
}

class Fragment$ReviewDetail$media$title {
  Fragment$ReviewDetail$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$ReviewDetail$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewDetail$media$title(
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
    if (!(other is Fragment$ReviewDetail$media$title) ||
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

extension UtilityExtension$Fragment$ReviewDetail$media$title
    on Fragment$ReviewDetail$media$title {
  CopyWith$Fragment$ReviewDetail$media$title<Fragment$ReviewDetail$media$title>
      get copyWith => CopyWith$Fragment$ReviewDetail$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReviewDetail$media$title<TRes> {
  factory CopyWith$Fragment$ReviewDetail$media$title(
    Fragment$ReviewDetail$media$title instance,
    TRes Function(Fragment$ReviewDetail$media$title) then,
  ) = _CopyWithImpl$Fragment$ReviewDetail$media$title;

  factory CopyWith$Fragment$ReviewDetail$media$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewDetail$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReviewDetail$media$title<TRes>
    implements CopyWith$Fragment$ReviewDetail$media$title<TRes> {
  _CopyWithImpl$Fragment$ReviewDetail$media$title(
    this._instance,
    this._then,
  );

  final Fragment$ReviewDetail$media$title _instance;

  final TRes Function(Fragment$ReviewDetail$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewDetail$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReviewDetail$media$title<TRes>
    implements CopyWith$Fragment$ReviewDetail$media$title<TRes> {
  _CopyWithStubImpl$Fragment$ReviewDetail$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReviewDetail$media$coverImage {
  Fragment$ReviewDetail$media$coverImage({
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$ReviewDetail$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewDetail$media$coverImage(
      extraLarge: (l$extraLarge as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? extraLarge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$extraLarge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReviewDetail$media$coverImage) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$ReviewDetail$media$coverImage
    on Fragment$ReviewDetail$media$coverImage {
  CopyWith$Fragment$ReviewDetail$media$coverImage<
          Fragment$ReviewDetail$media$coverImage>
      get copyWith => CopyWith$Fragment$ReviewDetail$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReviewDetail$media$coverImage<TRes> {
  factory CopyWith$Fragment$ReviewDetail$media$coverImage(
    Fragment$ReviewDetail$media$coverImage instance,
    TRes Function(Fragment$ReviewDetail$media$coverImage) then,
  ) = _CopyWithImpl$Fragment$ReviewDetail$media$coverImage;

  factory CopyWith$Fragment$ReviewDetail$media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewDetail$media$coverImage;

  TRes call({
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReviewDetail$media$coverImage<TRes>
    implements CopyWith$Fragment$ReviewDetail$media$coverImage<TRes> {
  _CopyWithImpl$Fragment$ReviewDetail$media$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$ReviewDetail$media$coverImage _instance;

  final TRes Function(Fragment$ReviewDetail$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewDetail$media$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReviewDetail$media$coverImage<TRes>
    implements CopyWith$Fragment$ReviewDetail$media$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$ReviewDetail$media$coverImage(this._res);

  TRes _res;

  call({
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultCharacter {
  Fragment$SearchResultCharacter({
    required this.id,
    this.name,
    this.image,
    this.favourites,
    this.$__typename = 'Character',
  });

  factory Fragment$SearchResultCharacter.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultCharacter(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Fragment$SearchResultCharacter$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Fragment$SearchResultCharacter$image.fromJson(
              (l$image as Map<String, dynamic>)),
      favourites: (l$favourites as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$SearchResultCharacter$name? name;

  final Fragment$SearchResultCharacter$image? image;

  final int? favourites;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$favourites = favourites;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$favourites,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultCharacter) ||
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
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
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

extension UtilityExtension$Fragment$SearchResultCharacter
    on Fragment$SearchResultCharacter {
  CopyWith$Fragment$SearchResultCharacter<Fragment$SearchResultCharacter>
      get copyWith => CopyWith$Fragment$SearchResultCharacter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultCharacter<TRes> {
  factory CopyWith$Fragment$SearchResultCharacter(
    Fragment$SearchResultCharacter instance,
    TRes Function(Fragment$SearchResultCharacter) then,
  ) = _CopyWithImpl$Fragment$SearchResultCharacter;

  factory CopyWith$Fragment$SearchResultCharacter.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultCharacter;

  TRes call({
    int? id,
    Fragment$SearchResultCharacter$name? name,
    Fragment$SearchResultCharacter$image? image,
    int? favourites,
    String? $__typename,
  });
  CopyWith$Fragment$SearchResultCharacter$name<TRes> get name;
  CopyWith$Fragment$SearchResultCharacter$image<TRes> get image;
}

class _CopyWithImpl$Fragment$SearchResultCharacter<TRes>
    implements CopyWith$Fragment$SearchResultCharacter<TRes> {
  _CopyWithImpl$Fragment$SearchResultCharacter(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultCharacter _instance;

  final TRes Function(Fragment$SearchResultCharacter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultCharacter(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Fragment$SearchResultCharacter$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Fragment$SearchResultCharacter$image?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SearchResultCharacter$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Fragment$SearchResultCharacter$name.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultCharacter$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Fragment$SearchResultCharacter$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Fragment$SearchResultCharacter$image.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultCharacter$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Fragment$SearchResultCharacter<TRes>
    implements CopyWith$Fragment$SearchResultCharacter<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultCharacter(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$SearchResultCharacter$name? name,
    Fragment$SearchResultCharacter$image? image,
    int? favourites,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SearchResultCharacter$name<TRes> get name =>
      CopyWith$Fragment$SearchResultCharacter$name.stub(_res);

  CopyWith$Fragment$SearchResultCharacter$image<TRes> get image =>
      CopyWith$Fragment$SearchResultCharacter$image.stub(_res);
}

const fragmentDefinitionSearchResultCharacter = FragmentDefinitionNode(
  name: NameNode(value: 'SearchResultCharacter'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Character'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'image'),
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
      name: NameNode(value: 'favourites'),
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
);
const documentNodeFragmentSearchResultCharacter = DocumentNode(definitions: [
  fragmentDefinitionSearchResultCharacter,
]);

extension ClientExtension$Fragment$SearchResultCharacter
    on graphql.GraphQLClient {
  void writeFragment$SearchResultCharacter({
    required Fragment$SearchResultCharacter data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SearchResultCharacter',
            document: documentNodeFragmentSearchResultCharacter,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SearchResultCharacter? readFragment$SearchResultCharacter({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SearchResultCharacter',
          document: documentNodeFragmentSearchResultCharacter,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$SearchResultCharacter.fromJson(result);
  }
}

class Fragment$SearchResultCharacter$name {
  Fragment$SearchResultCharacter$name({
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory Fragment$SearchResultCharacter$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultCharacter$name(
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
    if (!(other is Fragment$SearchResultCharacter$name) ||
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

extension UtilityExtension$Fragment$SearchResultCharacter$name
    on Fragment$SearchResultCharacter$name {
  CopyWith$Fragment$SearchResultCharacter$name<
          Fragment$SearchResultCharacter$name>
      get copyWith => CopyWith$Fragment$SearchResultCharacter$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultCharacter$name<TRes> {
  factory CopyWith$Fragment$SearchResultCharacter$name(
    Fragment$SearchResultCharacter$name instance,
    TRes Function(Fragment$SearchResultCharacter$name) then,
  ) = _CopyWithImpl$Fragment$SearchResultCharacter$name;

  factory CopyWith$Fragment$SearchResultCharacter$name.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultCharacter$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultCharacter$name<TRes>
    implements CopyWith$Fragment$SearchResultCharacter$name<TRes> {
  _CopyWithImpl$Fragment$SearchResultCharacter$name(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultCharacter$name _instance;

  final TRes Function(Fragment$SearchResultCharacter$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultCharacter$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultCharacter$name<TRes>
    implements CopyWith$Fragment$SearchResultCharacter$name<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultCharacter$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultCharacter$image {
  Fragment$SearchResultCharacter$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Fragment$SearchResultCharacter$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultCharacter$image(
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
    if (!(other is Fragment$SearchResultCharacter$image) ||
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

extension UtilityExtension$Fragment$SearchResultCharacter$image
    on Fragment$SearchResultCharacter$image {
  CopyWith$Fragment$SearchResultCharacter$image<
          Fragment$SearchResultCharacter$image>
      get copyWith => CopyWith$Fragment$SearchResultCharacter$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultCharacter$image<TRes> {
  factory CopyWith$Fragment$SearchResultCharacter$image(
    Fragment$SearchResultCharacter$image instance,
    TRes Function(Fragment$SearchResultCharacter$image) then,
  ) = _CopyWithImpl$Fragment$SearchResultCharacter$image;

  factory CopyWith$Fragment$SearchResultCharacter$image.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultCharacter$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultCharacter$image<TRes>
    implements CopyWith$Fragment$SearchResultCharacter$image<TRes> {
  _CopyWithImpl$Fragment$SearchResultCharacter$image(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultCharacter$image _instance;

  final TRes Function(Fragment$SearchResultCharacter$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultCharacter$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultCharacter$image<TRes>
    implements CopyWith$Fragment$SearchResultCharacter$image<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultCharacter$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultStaff {
  Fragment$SearchResultStaff({
    required this.id,
    this.name,
    this.image,
    this.favourites,
    this.$__typename = 'Staff',
  });

  factory Fragment$SearchResultStaff.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStaff(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Fragment$SearchResultStaff$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Fragment$SearchResultStaff$image.fromJson(
              (l$image as Map<String, dynamic>)),
      favourites: (l$favourites as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$SearchResultStaff$name? name;

  final Fragment$SearchResultStaff$image? image;

  final int? favourites;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$favourites = favourites;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$favourites,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultStaff) ||
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
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
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

extension UtilityExtension$Fragment$SearchResultStaff
    on Fragment$SearchResultStaff {
  CopyWith$Fragment$SearchResultStaff<Fragment$SearchResultStaff>
      get copyWith => CopyWith$Fragment$SearchResultStaff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStaff<TRes> {
  factory CopyWith$Fragment$SearchResultStaff(
    Fragment$SearchResultStaff instance,
    TRes Function(Fragment$SearchResultStaff) then,
  ) = _CopyWithImpl$Fragment$SearchResultStaff;

  factory CopyWith$Fragment$SearchResultStaff.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStaff;

  TRes call({
    int? id,
    Fragment$SearchResultStaff$name? name,
    Fragment$SearchResultStaff$image? image,
    int? favourites,
    String? $__typename,
  });
  CopyWith$Fragment$SearchResultStaff$name<TRes> get name;
  CopyWith$Fragment$SearchResultStaff$image<TRes> get image;
}

class _CopyWithImpl$Fragment$SearchResultStaff<TRes>
    implements CopyWith$Fragment$SearchResultStaff<TRes> {
  _CopyWithImpl$Fragment$SearchResultStaff(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStaff _instance;

  final TRes Function(Fragment$SearchResultStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStaff(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Fragment$SearchResultStaff$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Fragment$SearchResultStaff$image?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SearchResultStaff$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Fragment$SearchResultStaff$name.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultStaff$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Fragment$SearchResultStaff$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Fragment$SearchResultStaff$image.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultStaff$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Fragment$SearchResultStaff<TRes>
    implements CopyWith$Fragment$SearchResultStaff<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStaff(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$SearchResultStaff$name? name,
    Fragment$SearchResultStaff$image? image,
    int? favourites,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SearchResultStaff$name<TRes> get name =>
      CopyWith$Fragment$SearchResultStaff$name.stub(_res);

  CopyWith$Fragment$SearchResultStaff$image<TRes> get image =>
      CopyWith$Fragment$SearchResultStaff$image.stub(_res);
}

const fragmentDefinitionSearchResultStaff = FragmentDefinitionNode(
  name: NameNode(value: 'SearchResultStaff'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Staff'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'image'),
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
      name: NameNode(value: 'favourites'),
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
);
const documentNodeFragmentSearchResultStaff = DocumentNode(definitions: [
  fragmentDefinitionSearchResultStaff,
]);

extension ClientExtension$Fragment$SearchResultStaff on graphql.GraphQLClient {
  void writeFragment$SearchResultStaff({
    required Fragment$SearchResultStaff data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SearchResultStaff',
            document: documentNodeFragmentSearchResultStaff,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SearchResultStaff? readFragment$SearchResultStaff({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SearchResultStaff',
          document: documentNodeFragmentSearchResultStaff,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$SearchResultStaff.fromJson(result);
  }
}

class Fragment$SearchResultStaff$name {
  Fragment$SearchResultStaff$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Fragment$SearchResultStaff$name.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStaff$name(
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
    if (!(other is Fragment$SearchResultStaff$name) ||
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

extension UtilityExtension$Fragment$SearchResultStaff$name
    on Fragment$SearchResultStaff$name {
  CopyWith$Fragment$SearchResultStaff$name<Fragment$SearchResultStaff$name>
      get copyWith => CopyWith$Fragment$SearchResultStaff$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStaff$name<TRes> {
  factory CopyWith$Fragment$SearchResultStaff$name(
    Fragment$SearchResultStaff$name instance,
    TRes Function(Fragment$SearchResultStaff$name) then,
  ) = _CopyWithImpl$Fragment$SearchResultStaff$name;

  factory CopyWith$Fragment$SearchResultStaff$name.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStaff$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultStaff$name<TRes>
    implements CopyWith$Fragment$SearchResultStaff$name<TRes> {
  _CopyWithImpl$Fragment$SearchResultStaff$name(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStaff$name _instance;

  final TRes Function(Fragment$SearchResultStaff$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStaff$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultStaff$name<TRes>
    implements CopyWith$Fragment$SearchResultStaff$name<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStaff$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultStaff$image {
  Fragment$SearchResultStaff$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Fragment$SearchResultStaff$image.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStaff$image(
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
    if (!(other is Fragment$SearchResultStaff$image) ||
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

extension UtilityExtension$Fragment$SearchResultStaff$image
    on Fragment$SearchResultStaff$image {
  CopyWith$Fragment$SearchResultStaff$image<Fragment$SearchResultStaff$image>
      get copyWith => CopyWith$Fragment$SearchResultStaff$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStaff$image<TRes> {
  factory CopyWith$Fragment$SearchResultStaff$image(
    Fragment$SearchResultStaff$image instance,
    TRes Function(Fragment$SearchResultStaff$image) then,
  ) = _CopyWithImpl$Fragment$SearchResultStaff$image;

  factory CopyWith$Fragment$SearchResultStaff$image.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStaff$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultStaff$image<TRes>
    implements CopyWith$Fragment$SearchResultStaff$image<TRes> {
  _CopyWithImpl$Fragment$SearchResultStaff$image(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStaff$image _instance;

  final TRes Function(Fragment$SearchResultStaff$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStaff$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultStaff$image<TRes>
    implements CopyWith$Fragment$SearchResultStaff$image<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStaff$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultStudio {
  Fragment$SearchResultStudio({
    required this.id,
    required this.name,
    this.favourites,
    this.media,
    this.$__typename = 'Studio',
  });

  factory Fragment$SearchResultStudio.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$favourites = json['favourites'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStudio(
      id: (l$id as int),
      name: (l$name as String),
      favourites: (l$favourites as int?),
      media: l$media == null
          ? null
          : Fragment$SearchResultStudio$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? favourites;

  final Fragment$SearchResultStudio$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$favourites = favourites;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$favourites,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultStudio) ||
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
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
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

extension UtilityExtension$Fragment$SearchResultStudio
    on Fragment$SearchResultStudio {
  CopyWith$Fragment$SearchResultStudio<Fragment$SearchResultStudio>
      get copyWith => CopyWith$Fragment$SearchResultStudio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStudio<TRes> {
  factory CopyWith$Fragment$SearchResultStudio(
    Fragment$SearchResultStudio instance,
    TRes Function(Fragment$SearchResultStudio) then,
  ) = _CopyWithImpl$Fragment$SearchResultStudio;

  factory CopyWith$Fragment$SearchResultStudio.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStudio;

  TRes call({
    int? id,
    String? name,
    int? favourites,
    Fragment$SearchResultStudio$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$SearchResultStudio$media<TRes> get media;
}

class _CopyWithImpl$Fragment$SearchResultStudio<TRes>
    implements CopyWith$Fragment$SearchResultStudio<TRes> {
  _CopyWithImpl$Fragment$SearchResultStudio(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStudio _instance;

  final TRes Function(Fragment$SearchResultStudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? favourites = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStudio(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$SearchResultStudio$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SearchResultStudio$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$SearchResultStudio$media.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultStudio$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$SearchResultStudio<TRes>
    implements CopyWith$Fragment$SearchResultStudio<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStudio(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? favourites,
    Fragment$SearchResultStudio$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SearchResultStudio$media<TRes> get media =>
      CopyWith$Fragment$SearchResultStudio$media.stub(_res);
}

const fragmentDefinitionSearchResultStudio = FragmentDefinitionNode(
  name: NameNode(value: 'SearchResultStudio'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Studio'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'favourites'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'perPage'),
          value: IntValueNode(value: '1'),
        ),
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: ListValueNode(values: [
            EnumValueNode(name: NameNode(value: 'TRENDING_DESC')),
            EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
          ]),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'nodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentSearchResultStudio = DocumentNode(definitions: [
  fragmentDefinitionSearchResultStudio,
]);

extension ClientExtension$Fragment$SearchResultStudio on graphql.GraphQLClient {
  void writeFragment$SearchResultStudio({
    required Fragment$SearchResultStudio data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SearchResultStudio',
            document: documentNodeFragmentSearchResultStudio,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SearchResultStudio? readFragment$SearchResultStudio({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SearchResultStudio',
          document: documentNodeFragmentSearchResultStudio,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$SearchResultStudio.fromJson(result);
  }
}

class Fragment$SearchResultStudio$media {
  Fragment$SearchResultStudio$media({
    this.nodes,
    this.$__typename = 'MediaConnection',
  });

  factory Fragment$SearchResultStudio$media.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStudio$media(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$SearchResultStudio$media$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$SearchResultStudio$media$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultStudio$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Fragment$SearchResultStudio$media
    on Fragment$SearchResultStudio$media {
  CopyWith$Fragment$SearchResultStudio$media<Fragment$SearchResultStudio$media>
      get copyWith => CopyWith$Fragment$SearchResultStudio$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStudio$media<TRes> {
  factory CopyWith$Fragment$SearchResultStudio$media(
    Fragment$SearchResultStudio$media instance,
    TRes Function(Fragment$SearchResultStudio$media) then,
  ) = _CopyWithImpl$Fragment$SearchResultStudio$media;

  factory CopyWith$Fragment$SearchResultStudio$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStudio$media;

  TRes call({
    List<Fragment$SearchResultStudio$media$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$SearchResultStudio$media$nodes?>? Function(
              Iterable<
                  CopyWith$Fragment$SearchResultStudio$media$nodes<
                      Fragment$SearchResultStudio$media$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$SearchResultStudio$media<TRes>
    implements CopyWith$Fragment$SearchResultStudio$media<TRes> {
  _CopyWithImpl$Fragment$SearchResultStudio$media(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStudio$media _instance;

  final TRes Function(Fragment$SearchResultStudio$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStudio$media(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$SearchResultStudio$media$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$SearchResultStudio$media$nodes?>? Function(
                  Iterable<
                      CopyWith$Fragment$SearchResultStudio$media$nodes<
                          Fragment$SearchResultStudio$media$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$SearchResultStudio$media$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$SearchResultStudio$media<TRes>
    implements CopyWith$Fragment$SearchResultStudio$media<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStudio$media(this._res);

  TRes _res;

  call({
    List<Fragment$SearchResultStudio$media$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Fragment$SearchResultStudio$media$nodes {
  Fragment$SearchResultStudio$media$nodes({
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$SearchResultStudio$media$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStudio$media$nodes(
      coverImage: l$coverImage == null
          ? null
          : Fragment$SearchResultStudio$media$nodes$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$SearchResultStudio$media$nodes$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultStudio$media$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtension$Fragment$SearchResultStudio$media$nodes
    on Fragment$SearchResultStudio$media$nodes {
  CopyWith$Fragment$SearchResultStudio$media$nodes<
          Fragment$SearchResultStudio$media$nodes>
      get copyWith => CopyWith$Fragment$SearchResultStudio$media$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStudio$media$nodes<TRes> {
  factory CopyWith$Fragment$SearchResultStudio$media$nodes(
    Fragment$SearchResultStudio$media$nodes instance,
    TRes Function(Fragment$SearchResultStudio$media$nodes) then,
  ) = _CopyWithImpl$Fragment$SearchResultStudio$media$nodes;

  factory CopyWith$Fragment$SearchResultStudio$media$nodes.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStudio$media$nodes;

  TRes call({
    Fragment$SearchResultStudio$media$nodes$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<TRes>
      get coverImage;
}

class _CopyWithImpl$Fragment$SearchResultStudio$media$nodes<TRes>
    implements CopyWith$Fragment$SearchResultStudio$media$nodes<TRes> {
  _CopyWithImpl$Fragment$SearchResultStudio$media$nodes(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStudio$media$nodes _instance;

  final TRes Function(Fragment$SearchResultStudio$media$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStudio$media$nodes(
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Fragment$SearchResultStudio$media$nodes$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage.stub(
            _then(_instance))
        : CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$SearchResultStudio$media$nodes<TRes>
    implements CopyWith$Fragment$SearchResultStudio$media$nodes<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStudio$media$nodes(this._res);

  TRes _res;

  call({
    Fragment$SearchResultStudio$media$nodes$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<TRes>
      get coverImage =>
          CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage.stub(
              _res);
}

class Fragment$SearchResultStudio$media$nodes$coverImage {
  Fragment$SearchResultStudio$media$nodes$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$SearchResultStudio$media$nodes$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStudio$media$nodes$coverImage(
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
    if (!(other is Fragment$SearchResultStudio$media$nodes$coverImage) ||
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

extension UtilityExtension$Fragment$SearchResultStudio$media$nodes$coverImage
    on Fragment$SearchResultStudio$media$nodes$coverImage {
  CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<
          Fragment$SearchResultStudio$media$nodes$coverImage>
      get copyWith =>
          CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<
    TRes> {
  factory CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage(
    Fragment$SearchResultStudio$media$nodes$coverImage instance,
    TRes Function(Fragment$SearchResultStudio$media$nodes$coverImage) then,
  ) = _CopyWithImpl$Fragment$SearchResultStudio$media$nodes$coverImage;

  factory CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStudio$media$nodes$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultStudio$media$nodes$coverImage<TRes>
    implements
        CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<TRes> {
  _CopyWithImpl$Fragment$SearchResultStudio$media$nodes$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStudio$media$nodes$coverImage _instance;

  final TRes Function(Fragment$SearchResultStudio$media$nodes$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStudio$media$nodes$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultStudio$media$nodes$coverImage<TRes>
    implements
        CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStudio$media$nodes$coverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultUser {
  Fragment$SearchResultUser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Fragment$SearchResultUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultUser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Fragment$SearchResultUser$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Fragment$SearchResultUser$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (!(other is Fragment$SearchResultUser) ||
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

extension UtilityExtension$Fragment$SearchResultUser
    on Fragment$SearchResultUser {
  CopyWith$Fragment$SearchResultUser<Fragment$SearchResultUser> get copyWith =>
      CopyWith$Fragment$SearchResultUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$SearchResultUser<TRes> {
  factory CopyWith$Fragment$SearchResultUser(
    Fragment$SearchResultUser instance,
    TRes Function(Fragment$SearchResultUser) then,
  ) = _CopyWithImpl$Fragment$SearchResultUser;

  factory CopyWith$Fragment$SearchResultUser.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultUser;

  TRes call({
    int? id,
    String? name,
    Fragment$SearchResultUser$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Fragment$SearchResultUser$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$SearchResultUser<TRes>
    implements CopyWith$Fragment$SearchResultUser<TRes> {
  _CopyWithImpl$Fragment$SearchResultUser(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultUser _instance;

  final TRes Function(Fragment$SearchResultUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultUser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$SearchResultUser$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SearchResultUser$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$SearchResultUser$avatar.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultUser$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$SearchResultUser<TRes>
    implements CopyWith$Fragment$SearchResultUser<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultUser(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Fragment$SearchResultUser$avatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SearchResultUser$avatar<TRes> get avatar =>
      CopyWith$Fragment$SearchResultUser$avatar.stub(_res);
}

const fragmentDefinitionSearchResultUser = FragmentDefinitionNode(
  name: NameNode(value: 'SearchResultUser'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
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
);
const documentNodeFragmentSearchResultUser = DocumentNode(definitions: [
  fragmentDefinitionSearchResultUser,
]);

extension ClientExtension$Fragment$SearchResultUser on graphql.GraphQLClient {
  void writeFragment$SearchResultUser({
    required Fragment$SearchResultUser data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SearchResultUser',
            document: documentNodeFragmentSearchResultUser,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SearchResultUser? readFragment$SearchResultUser({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SearchResultUser',
          document: documentNodeFragmentSearchResultUser,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$SearchResultUser.fromJson(result);
  }
}

class Fragment$SearchResultUser$avatar {
  Fragment$SearchResultUser$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$SearchResultUser$avatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultUser$avatar(
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
    if (!(other is Fragment$SearchResultUser$avatar) ||
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

extension UtilityExtension$Fragment$SearchResultUser$avatar
    on Fragment$SearchResultUser$avatar {
  CopyWith$Fragment$SearchResultUser$avatar<Fragment$SearchResultUser$avatar>
      get copyWith => CopyWith$Fragment$SearchResultUser$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultUser$avatar<TRes> {
  factory CopyWith$Fragment$SearchResultUser$avatar(
    Fragment$SearchResultUser$avatar instance,
    TRes Function(Fragment$SearchResultUser$avatar) then,
  ) = _CopyWithImpl$Fragment$SearchResultUser$avatar;

  factory CopyWith$Fragment$SearchResultUser$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultUser$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultUser$avatar<TRes>
    implements CopyWith$Fragment$SearchResultUser$avatar<TRes> {
  _CopyWithImpl$Fragment$SearchResultUser$avatar(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultUser$avatar _instance;

  final TRes Function(Fragment$SearchResultUser$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultUser$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultUser$avatar<TRes>
    implements CopyWith$Fragment$SearchResultUser$avatar<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultUser$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CalendarAiringSchedule {
  Fragment$CalendarAiringSchedule({
    required this.id,
    this.media,
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Fragment$CalendarAiringSchedule.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$media = json['media'];
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarAiringSchedule(
      id: (l$id as int),
      media: l$media == null
          ? null
          : Fragment$CalendarAiringSchedule$media.fromJson(
              (l$media as Map<String, dynamic>)),
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$CalendarAiringSchedule$media? media;

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
    if (!(other is Fragment$CalendarAiringSchedule) ||
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

extension UtilityExtension$Fragment$CalendarAiringSchedule
    on Fragment$CalendarAiringSchedule {
  CopyWith$Fragment$CalendarAiringSchedule<Fragment$CalendarAiringSchedule>
      get copyWith => CopyWith$Fragment$CalendarAiringSchedule(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarAiringSchedule<TRes> {
  factory CopyWith$Fragment$CalendarAiringSchedule(
    Fragment$CalendarAiringSchedule instance,
    TRes Function(Fragment$CalendarAiringSchedule) then,
  ) = _CopyWithImpl$Fragment$CalendarAiringSchedule;

  factory CopyWith$Fragment$CalendarAiringSchedule.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarAiringSchedule;

  TRes call({
    int? id,
    Fragment$CalendarAiringSchedule$media? media,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
  CopyWith$Fragment$CalendarAiringSchedule$media<TRes> get media;
}

class _CopyWithImpl$Fragment$CalendarAiringSchedule<TRes>
    implements CopyWith$Fragment$CalendarAiringSchedule<TRes> {
  _CopyWithImpl$Fragment$CalendarAiringSchedule(
    this._instance,
    this._then,
  );

  final Fragment$CalendarAiringSchedule _instance;

  final TRes Function(Fragment$CalendarAiringSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? media = _undefined,
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarAiringSchedule(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$CalendarAiringSchedule$media?),
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

  CopyWith$Fragment$CalendarAiringSchedule$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$CalendarAiringSchedule$media.stub(_then(_instance))
        : CopyWith$Fragment$CalendarAiringSchedule$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$CalendarAiringSchedule<TRes>
    implements CopyWith$Fragment$CalendarAiringSchedule<TRes> {
  _CopyWithStubImpl$Fragment$CalendarAiringSchedule(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$CalendarAiringSchedule$media? media,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CalendarAiringSchedule$media<TRes> get media =>
      CopyWith$Fragment$CalendarAiringSchedule$media.stub(_res);
}

const fragmentDefinitionCalendarAiringSchedule = FragmentDefinitionNode(
  name: NameNode(value: 'CalendarAiringSchedule'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'AiringSchedule'),
    isNonNull: false,
  )),
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
          name: NameNode(value: 'bannerImage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
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
);
const documentNodeFragmentCalendarAiringSchedule = DocumentNode(definitions: [
  fragmentDefinitionCalendarAiringSchedule,
]);

extension ClientExtension$Fragment$CalendarAiringSchedule
    on graphql.GraphQLClient {
  void writeFragment$CalendarAiringSchedule({
    required Fragment$CalendarAiringSchedule data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CalendarAiringSchedule',
            document: documentNodeFragmentCalendarAiringSchedule,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CalendarAiringSchedule? readFragment$CalendarAiringSchedule({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CalendarAiringSchedule',
          document: documentNodeFragmentCalendarAiringSchedule,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$CalendarAiringSchedule.fromJson(result);
  }
}

class Fragment$CalendarAiringSchedule$media {
  Fragment$CalendarAiringSchedule$media({
    this.title,
    this.bannerImage,
    this.mediaListEntry,
    this.$__typename = 'Media',
  });

  factory Fragment$CalendarAiringSchedule$media.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$bannerImage = json['bannerImage'];
    final l$mediaListEntry = json['mediaListEntry'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarAiringSchedule$media(
      title: l$title == null
          ? null
          : Fragment$CalendarAiringSchedule$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      bannerImage: (l$bannerImage as String?),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : Fragment$CalendarAiringSchedule$media$mediaListEntry.fromJson(
              (l$mediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CalendarAiringSchedule$media$title? title;

  final String? bannerImage;

  final Fragment$CalendarAiringSchedule$media$mediaListEntry? mediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$mediaListEntry = mediaListEntry;
    _resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$bannerImage = bannerImage;
    final l$mediaListEntry = mediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$bannerImage,
      l$mediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CalendarAiringSchedule$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
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

extension UtilityExtension$Fragment$CalendarAiringSchedule$media
    on Fragment$CalendarAiringSchedule$media {
  CopyWith$Fragment$CalendarAiringSchedule$media<
          Fragment$CalendarAiringSchedule$media>
      get copyWith => CopyWith$Fragment$CalendarAiringSchedule$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarAiringSchedule$media<TRes> {
  factory CopyWith$Fragment$CalendarAiringSchedule$media(
    Fragment$CalendarAiringSchedule$media instance,
    TRes Function(Fragment$CalendarAiringSchedule$media) then,
  ) = _CopyWithImpl$Fragment$CalendarAiringSchedule$media;

  factory CopyWith$Fragment$CalendarAiringSchedule$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media;

  TRes call({
    Fragment$CalendarAiringSchedule$media$title? title,
    String? bannerImage,
    Fragment$CalendarAiringSchedule$media$mediaListEntry? mediaListEntry,
    String? $__typename,
  });
  CopyWith$Fragment$CalendarAiringSchedule$media$title<TRes> get title;
  CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<TRes>
      get mediaListEntry;
}

class _CopyWithImpl$Fragment$CalendarAiringSchedule$media<TRes>
    implements CopyWith$Fragment$CalendarAiringSchedule$media<TRes> {
  _CopyWithImpl$Fragment$CalendarAiringSchedule$media(
    this._instance,
    this._then,
  );

  final Fragment$CalendarAiringSchedule$media _instance;

  final TRes Function(Fragment$CalendarAiringSchedule$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? bannerImage = _undefined,
    Object? mediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarAiringSchedule$media(
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$CalendarAiringSchedule$media$title?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry
                as Fragment$CalendarAiringSchedule$media$mediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CalendarAiringSchedule$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$CalendarAiringSchedule$media$title.stub(
            _then(_instance))
        : CopyWith$Fragment$CalendarAiringSchedule$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<TRes>
      get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry.stub(
            _then(_instance))
        : CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }
}

class _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media<TRes>
    implements CopyWith$Fragment$CalendarAiringSchedule$media<TRes> {
  _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media(this._res);

  TRes _res;

  call({
    Fragment$CalendarAiringSchedule$media$title? title,
    String? bannerImage,
    Fragment$CalendarAiringSchedule$media$mediaListEntry? mediaListEntry,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CalendarAiringSchedule$media$title<TRes> get title =>
      CopyWith$Fragment$CalendarAiringSchedule$media$title.stub(_res);

  CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<TRes>
      get mediaListEntry =>
          CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry.stub(
              _res);
}

class Fragment$CalendarAiringSchedule$media$title {
  Fragment$CalendarAiringSchedule$media$title({
    this.userPreferred,
    this.english,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$CalendarAiringSchedule$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$english = json['english'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarAiringSchedule$media$title(
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
    if (!(other is Fragment$CalendarAiringSchedule$media$title) ||
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

extension UtilityExtension$Fragment$CalendarAiringSchedule$media$title
    on Fragment$CalendarAiringSchedule$media$title {
  CopyWith$Fragment$CalendarAiringSchedule$media$title<
          Fragment$CalendarAiringSchedule$media$title>
      get copyWith => CopyWith$Fragment$CalendarAiringSchedule$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarAiringSchedule$media$title<TRes> {
  factory CopyWith$Fragment$CalendarAiringSchedule$media$title(
    Fragment$CalendarAiringSchedule$media$title instance,
    TRes Function(Fragment$CalendarAiringSchedule$media$title) then,
  ) = _CopyWithImpl$Fragment$CalendarAiringSchedule$media$title;

  factory CopyWith$Fragment$CalendarAiringSchedule$media$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media$title;

  TRes call({
    String? userPreferred,
    String? english,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CalendarAiringSchedule$media$title<TRes>
    implements CopyWith$Fragment$CalendarAiringSchedule$media$title<TRes> {
  _CopyWithImpl$Fragment$CalendarAiringSchedule$media$title(
    this._instance,
    this._then,
  );

  final Fragment$CalendarAiringSchedule$media$title _instance;

  final TRes Function(Fragment$CalendarAiringSchedule$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? english = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarAiringSchedule$media$title(
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

class _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media$title<TRes>
    implements CopyWith$Fragment$CalendarAiringSchedule$media$title<TRes> {
  _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? english,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CalendarAiringSchedule$media$mediaListEntry {
  Fragment$CalendarAiringSchedule$media$mediaListEntry({
    this.status,
    this.$__typename = 'MediaList',
  });

  factory Fragment$CalendarAiringSchedule$media$mediaListEntry.fromJson(
      Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarAiringSchedule$media$mediaListEntry(
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
    if (!(other is Fragment$CalendarAiringSchedule$media$mediaListEntry) ||
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

extension UtilityExtension$Fragment$CalendarAiringSchedule$media$mediaListEntry
    on Fragment$CalendarAiringSchedule$media$mediaListEntry {
  CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<
          Fragment$CalendarAiringSchedule$media$mediaListEntry>
      get copyWith =>
          CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<
    TRes> {
  factory CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry(
    Fragment$CalendarAiringSchedule$media$mediaListEntry instance,
    TRes Function(Fragment$CalendarAiringSchedule$media$mediaListEntry) then,
  ) = _CopyWithImpl$Fragment$CalendarAiringSchedule$media$mediaListEntry;

  factory CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media$mediaListEntry;

  TRes call({
    Enum$MediaListStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CalendarAiringSchedule$media$mediaListEntry<TRes>
    implements
        CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<TRes> {
  _CopyWithImpl$Fragment$CalendarAiringSchedule$media$mediaListEntry(
    this._instance,
    this._then,
  );

  final Fragment$CalendarAiringSchedule$media$mediaListEntry _instance;

  final TRes Function(Fragment$CalendarAiringSchedule$media$mediaListEntry)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarAiringSchedule$media$mediaListEntry(
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media$mediaListEntry<
        TRes>
    implements
        CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<TRes> {
  _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media$mediaListEntry(
      this._res);

  TRes _res;

  call({
    Enum$MediaListStatus? status,
    String? $__typename,
  }) =>
      _res;
}
