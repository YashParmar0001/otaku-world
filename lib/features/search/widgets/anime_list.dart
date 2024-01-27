import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otaku_world/bloc/search/search_anime/search_anime_bloc.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/features/search/widgets/media_card.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/search/search_base/search_bloc.dart';

class ResultAnimeList extends HookWidget {
  const ResultAnimeList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();

    useEffect(() {
      controller.addListener(() {
        final maxScroll = controller.position.maxScrollExtent;
        final currentScroll = controller.position.pixels;

        if (currentScroll == maxScroll) {
          dev.log('Max scrolled', name: 'AnimeSearch');
          final searchAnimeBloc = context.read<SearchAnimeBloc>();
          final hasNextPage =
              (searchAnimeBloc.state as SearchResultLoaded).hasNextPage;
          if (hasNextPage) {
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            searchAnimeBloc.add(LoadMore(client));
          }
        }
      });
      return null;
    });

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: BlocBuilder<SearchAnimeBloc, SearchState>(
        builder: (context, state) {
          if (state is SearchInitial) {
            return const Center(
              child: Text(
                'Search Something!',
                style: TextStyle(color: AppColors.white),
              ),
            );
          } else if (state is SearchResultLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SearchError) {
            return ErrorText(message: state.message, onTryAgain: () {});
          } else if (state is SearchResultLoaded<Fragment$SearchResultMedia?>) {
            final list = state.list;
            final hasNextPage = state.hasNextPage;

            return CustomScrollView(
              scrollDirection: Axis.vertical,
              clipBehavior: Clip.none,
              controller: controller,
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return ResultMediaCard(media: list[index]);
                    },
                    childCount: list.length,
                  ),
                ),
                if (hasNextPage)
                  const SliverToBoxAdapter(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
              ],
            );
          } else {
            return const Text('Unknown State');
          }
        },
      ),
    );
  }
}
