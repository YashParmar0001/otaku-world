import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/filter/collections/genres/genre_cubit.dart';
import 'package:otaku_world/bloc/filter/filter_anime/filter_anime_bloc.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/core/ui/filters/custom_chips.dart';
import 'package:otaku_world/core/ui/filters/custom_choice_chip.dart';

class GenresChips extends StatelessWidget {
  const GenresChips({
    super.key,
    required this.selectedGenres,
  });

  final List<String> selectedGenres;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenreCubit, GenreState>(
      builder: (context, state) {
        if (state is GenreInitial) {
          final client = (context.read<GraphqlClientCubit>().state
                  as GraphqlClientInitialized)
              .client;
          context.read<GenreCubit>().loadAnimeGenre(client);
          return const CircularProgressIndicator();
        } else if (state is GenreLoading) {
          return const CircularProgressIndicator();
        } else if (state is GenreLoaded) {
          final bloc = context.read<FilterAnimeBloc>();
          return CustomChips(
            title: 'Genres',
            chipList: state.genres.map((genre) {
              return genre == null
                  ? const SizedBox()
                  : CustomChoiceChip(
                      label: genre,
                      value: genre,
                      onSelected: (genre) {
                        bloc.add(SelectAnimeGenre(genre));
                      },
                      onUnselected: (genre) {
                        bloc.add(UnselectAnimeGenre(genre));
                      },
                      selected: selectedGenres.contains(genre),
                    );
            }).toList(),
          );
        } else if (state is GenreError) {
          return ErrorText(message: state.message, onTryAgain: () {});
        } else {
          return const Text('Unknown State');
        }
      },
    );
  }
}
