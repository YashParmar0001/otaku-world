import 'package:otaku_world/bloc/recomendations/recomendation_anime_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class RecommendationsParameters {
  final RecommendationAnimeBloc bloc;

  final Enum$MediaType mediaType;

  RecommendationsParameters({required this.bloc, required this.mediaType});
}
