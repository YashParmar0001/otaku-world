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

class Fragment$Review {
  Fragment$Review({
    required this.id,
    this.summary,
    this.userRating,
    this.rating,
    this.ratingAmount,
    this.body,
    this.score,
    required this.mediaId,
    required this.createdAt,
    required this.updatedAt,
    this.user,
    this.media,
    this.$__typename = 'Review',
  });

  factory Fragment$Review.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$summary = json['summary'];
    final l$userRating = json['userRating'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$body = json['body'];
    final l$score = json['score'];
    final l$mediaId = json['mediaId'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
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
      ratingAmount: (l$ratingAmount as int?),
      body: (l$body as String?),
      score: (l$score as int?),
      mediaId: (l$mediaId as int),
      createdAt: (l$createdAt as int),
      updatedAt: (l$updatedAt as int),
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

  final int? ratingAmount;

  final String? body;

  final int? score;

  final int mediaId;

  final int createdAt;

  final int updatedAt;

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
    final l$ratingAmount = ratingAmount;
    _resultData['ratingAmount'] = l$ratingAmount;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$mediaId = mediaId;
    _resultData['mediaId'] = l$mediaId;
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
    int? ratingAmount,
    String? body,
    int? score,
    int? mediaId,
    int? createdAt,
    int? updatedAt,
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
    Object? ratingAmount = _undefined,
    Object? body = _undefined,
    Object? score = _undefined,
    Object? mediaId = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
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
        ratingAmount: ratingAmount == _undefined
            ? _instance.ratingAmount
            : (ratingAmount as int?),
        body: body == _undefined ? _instance.body : (body as String?),
        score: score == _undefined ? _instance.score : (score as int?),
        mediaId: mediaId == _undefined || mediaId == null
            ? _instance.mediaId
            : (mediaId as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as int),
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
    int? ratingAmount,
    String? body,
    int? score,
    int? mediaId,
    int? createdAt,
    int? updatedAt,
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
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$Review$user$avatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$Review$user$avatar(
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
    if (!(other is Fragment$Review$user$avatar) ||
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
    String? large,
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
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Review$user$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
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
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Review$media {
  Fragment$Review$media({
    this.averageScore,
    this.bannerImage,
    this.title,
    this.$__typename = 'Media',
  });

  factory Fragment$Review$media.fromJson(Map<String, dynamic> json) {
    final l$averageScore = json['averageScore'];
    final l$bannerImage = json['bannerImage'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Fragment$Review$media(
      averageScore: (l$averageScore as int?),
      bannerImage: (l$bannerImage as String?),
      title: l$title == null
          ? null
          : Fragment$Review$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? averageScore;

  final String? bannerImage;

  final Fragment$Review$media$title? title;

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
    if (!(other is Fragment$Review$media) || runtimeType != other.runtimeType) {
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
    int? averageScore,
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
    Object? averageScore = _undefined,
    Object? bannerImage = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Review$media(
        averageScore: averageScore == _undefined
            ? _instance.averageScore
            : (averageScore as int?),
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
    int? averageScore,
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
