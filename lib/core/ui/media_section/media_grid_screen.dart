import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/appbars/simple_sliver_app_bar.dart';
import 'package:otaku_world/core/ui/images/cover_image.dart';
import 'package:otaku_world/core/ui/media_section/scroll_to_top_button.dart';
import 'package:otaku_world/core/ui/placeholders/poster_placeholder.dart';
import 'package:otaku_world/core/ui/shimmers/grid_shimmer.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../generated/assets.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../error_text.dart';

class MediaGridScreen<B extends PaginatedDataBloc> extends HookWidget {
  const MediaGridScreen({
    required this.mediaType,
    this.actions,
    required this.appbarTitle,
    super.key,
    this.crossAxisCount = 3,
    this.isTop100 = false,
  });

  final int crossAxisCount;
  final String appbarTitle;
  final List<Widget>? actions;
  final Enum$MediaType mediaType;
  final bool isTop100;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final scrollController = useScrollController();

    useEffect(() {
      scrollController.addListener(() {
        final maxScroll = scrollController.position.maxScrollExtent;
        final currentScroll = scrollController.position.pixels;

        if (currentScroll == maxScroll) {
          dev.log('Max scrolled', name: 'Media Grid');
          final bloc = context.read<B>();
          final hasNextPage = (bloc.state as PaginatedDataLoaded).hasNextPage;
          if (hasNextPage) {
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            bloc.add(LoadData(client));
          }
        }
      });
      return null;
    }, const []);

    return Scaffold(
      body: BlocBuilder<B, PaginatedDataState>(
        builder: (context, state) {
          if (state is PaginatedDataInitial || state is PaginatedDataLoading) {
            return Scaffold(
              appBar: SimpleAppBar(title: appbarTitle),
              body: GridShimmer(
                mediaType: mediaType,
              ),
            );
          } else if (state is PaginatedDataLoaded) {
            return CustomScrollView(
              controller: scrollController,
              // shrinkWrap: true,
              slivers: [
                SimpleSliverAppBar(
                  title: appbarTitle,
                  actions: actions,
                  floating: true,
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 0.001,
                      childAspectRatio: 0.5556,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      childCount: state.list.length,
                      (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AspectRatio(
                              aspectRatio: 0.70005,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: isTop100 ? 4 : 0,
                                      right: isTop100 ? 4 : 0,
                                    ),
                                    child: ClipRRect(
                                      borderRadius:
                                          (mediaType == Enum$MediaType.ANIME)
                                              ? BorderRadius.circular(15)
                                              : BorderRadius.circular(5),
                                      child: Stack(
                                        children: [
                                          GestureDetector(
                                            onTap: () => context.push(
                                                '${RouteConstants.mediaDetail}?id=${state.list[index].id}'),
                                            child: _buildMediaPoster(
                                              state.list[index]?.coverImage
                                                  ?.large,
                                              state.list[index]?.type ??
                                                  Enum$MediaType.$unknown,
                                              size,
                                              state.list[index].id,
                                            ),
                                          ),
                                          // Mean score
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: _buildMeanScore(
                                              context,
                                              state.list[index]?.meanScore,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (isTop100)
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        height: 19,
                                        decoration: BoxDecoration(
                                            color: FormattingUtils
                                                .getSelectMediaCardColors(
                                                    index: index),
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5.0),
                                          child: Center(
                                            child: Text(
                                              "#${index + 1}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge!
                                                  .copyWith(
                                                    color: AppColors.black,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            // Manga title
                            SizedBox(
                              child: Text(
                                getTitle(state.list[index]?.title) ?? '',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      fontFamily: 'Roboto-Condensed',
                                    ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                if (state.hasNextPage)
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
          } else if (state is PaginatedDataError) {
            return Center(
              child: ErrorText(
                message: state.message,
                onTryAgain: () {
                  final client = (context.read<GraphqlClientCubit>().state
                          as GraphqlClientInitialized)
                      .client;
                  context.read<B>().add(
                        LoadData(client),
                      );
                },
              ),
            );
          }
          return const Text('Unknown State');
        },
      ),
      floatingActionButton: ScrollToTopFAB(controller: scrollController),
    );
  }

  String? getTitle(Fragment$MediaShort$title? title) {
    return title?.english ?? title?.romaji ?? title?.native;
  }

  Widget _buildMeanScore(BuildContext context, int? meanScore) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 3,
      ),
      decoration: ShapeDecoration(
        color: AppColors.raisinBlack.withOpacity(0.6),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
          ),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(Assets.iconsStar),
          const SizedBox(
            width: 1,
          ),
          Text(
            (meanScore == null) ? '0' : meanScore.toString(),
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontFamily: 'Roboto-Condensed',
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildMediaPoster(
      String? imageUrl, Enum$MediaType type, Size size, int id) {
    return (imageUrl != null)
        ? AspectRatio(
            aspectRatio: 0.70005,
            //
            child: CoverImage(
              imageUrl: imageUrl,
              type: type,
            ),
          )
        : _buildPlaceholderImage110x162(type);
  }

  Widget _buildPlaceholderImage110x162(Enum$MediaType type) {
    return ClipRRect(
      borderRadius: (type == Enum$MediaType.ANIME)
          ? BorderRadius.circular(15)
          : BorderRadius.circular(5),
      child: const PosterPlaceholder(),
    );
  }
}
