import 'dart:developer' as dev;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/date_symbol_data_http_request.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/upcoming_episodes/upcoming_episodes_bloc.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/core/ui/shimmer_loader_list.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/home/upcoming_episodes.graphql.dart';
import 'package:otaku_world/services/caching/image_cache_manager.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'package:otaku_world/utils/ui_utils.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../constants/string_constants.dart';
import '../widgets/feature_card.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final upcomingEpisodesController = useScrollController();

    useEffect(() {
      upcomingEpisodesController.addListener(() {
        final maxScroll = upcomingEpisodesController.position.maxScrollExtent;
        final currentScroll = upcomingEpisodesController.position.pixels;

        if (currentScroll == maxScroll) {
          dev.log('Max scrolled', name: 'UpcomingEpisodes');
          final upcomingEpisodesBloc = context.read<UpcomingEpisodesBloc>();
          final hasNextPage =
              (upcomingEpisodesBloc.state as UpcomingEpisodesLoaded)
                  .hasNextPage;
          if (hasNextPage) {
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            upcomingEpisodesBloc.add(LoadUpcomingEpisodes(client));
          }
        }
      });
      return null;
    }, const []);

    return RefreshIndicator(
      onRefresh: () async {},
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            // Search Option
            _buildSearchOption(context),
            const SizedBox(
              height: 15,
            ),
            _buildUpcomingEpisodesSection(
              context,
              screenHeight,
              screenWidth,
              upcomingEpisodesController,
            ),
            const SizedBox(
              height: 15,
            ),
            // Reviews feature card
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: FeatureCard(
                onTap: () {
                  UIUtils.showSnackBar(context, 'Coming soon..');
                },
                heading: HomeConstants.reviewsHeading,
                subheading: HomeConstants.reviewsSubheading,
                icon: Assets.iconsChatBubble,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // Calendar feature card
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: FeatureCard(
                onTap: () {
                  context.push('/calendar');
                },
                heading: HomeConstants.calendarHeading,
                subheading: HomeConstants.calendarSubheading,
                icon: Assets.iconsCalendar,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // Recommended Anime Section
            // MediaSection(
            //   hook: recommendedAnimeHook,
            //   sectionHeader: 'Recommended Anime',
            //   onMorePressed: () {
            //     context.push('/recommendedAnime');
            //   },
            //   onSliderPressed: () {
            //     recommendedAnimeHook.refetch();
            //     context.push(
            //       '/mediaSlider/Recommended Anime',
            //       extra: recommendedAnimeHook.result.parsedData?.Page?.media,
            //     );
            //   },
            // ),
            const SizedBox(
              height: 15,
            ),
            // Trending Anime Section
            // MediaSection(
            //   hook: trendingAnimeHook,
            //   sectionHeader: 'Trending Anime',
            //   onMorePressed: () {
            //     context.push('/trendingAnime');
            //   },
            //   onSliderPressed: () {
            //     trendingAnimeHook.refetch();
            //     context.push(
            //       '/mediaSlider/Trending Anime',
            //       extra: trendingAnimeHook.result.parsedData?.Page?.media,
            //     );
            //   },
            // ),
            const SizedBox(
              height: 15,
            ),
            // Recommended Manga Section
            // MediaSection(
            //   hook: recommendedMangaHook,
            //   sectionHeader: 'Recommended Manga',
            //   onMorePressed: () {
            //     context.push('/recommendedManga');
            //   },
            //   onSliderPressed: () {
            //     recommendedMangaHook.refetch();
            //     context.push(
            //       '/mediaSlider/Recommended Manga',
            //       extra: recommendedMangaHook.result.parsedData?.Page?.media,
            //     );
            //   },
            // ),
            const SizedBox(
              height: 15,
            ),
            // Trending Manga Section
            // MediaSection(
            //   hook: trendingMangaHook,
            //   sectionHeader: 'Trending Manga',
            //   onMorePressed: () {
            //     context.push('/trendingManga');
            //   },
            //   onSliderPressed: () {
            //     trendingMangaHook.refetch();
            //     context.push(
            //       '/mediaSlider/Trending Manga',
            //       extra: trendingMangaHook.result.parsedData?.Page?.media,
            //     );
            //   },
            // ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUpcomingEpisodesSection(
    BuildContext context,
    double screenHeight,
    double screenWidth,
    ScrollController controller,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: BlocBuilder<UpcomingEpisodesBloc, UpcomingEpisodesState>(
        builder: (context, state) {
          if (state is UpcomingEpisodesLoading ||
              state is UpcomingEpisodesInitial) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upcoming Episodes',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontFamily: 'Roboto-Condensed',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                ShimmerLoaderList(
                  direction: Axis.horizontal,
                  height: UIUtils.getWidgetHeight(
                    targetWidgetHeight: 134,
                    screenHeight: screenHeight,
                  ),
                  widgetBorder: 15,
                  widgetHeight: UIUtils.getWidgetHeight(
                    targetWidgetHeight: 134,
                    screenHeight: screenHeight,
                  ),
                  widgetWidth: UIUtils.getWidgetWidth(
                    targetWidgetWidth: 215,
                    screenWidth: screenWidth,
                  ),
                ),
              ],
            );

          } else if (state is UpcomingEpisodesLoaded) {
            dev.log('Rebuilding the episodes list');
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upcoming Episodes',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontFamily: 'Roboto-Condensed',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                _buildUpcomingEpisodesList(
                  state.episodes,
                  state.hasNextPage,
                  screenHeight,
                  controller,
                ),
              ],
            );
          } else if (state is UpcomingEpisodesError) {
            return ErrorText(
                message: state.message,
                onTryAgain: () {
                  final client = (context.read<GraphqlClientCubit>().state
                  as GraphqlClientInitialized)
                      .client;
                  context
                      .read<UpcomingEpisodesBloc>()
                      .add(LoadUpcomingEpisodes(client));
                });
          } else {
            return const Text('Unknown State');
          }
        },
      ),
    );
  }

  Widget _buildUpcomingEpisodesList(
    List<Query$GetUpcomingEpisodes$Page$media?> episodes,
    bool hasNextPage,
    double screenHeight,
    ScrollController controller,
  ) {
    final List<Color> cardColors = [
      AppColors.sunsetOrange,
      AppColors.crayola,
      AppColors.kiwi,
    ];

    return SizedBox(
      height: UIUtils.getWidgetHeight(
        targetWidgetHeight: 134,
        screenHeight: screenHeight,
      ),
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        controller: controller,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return _buildUpcomingEpisodeCard(
                  context: context,
                  media: episodes[index],
                  color: cardColors[index % cardColors.length],
                );
              },
              childCount: episodes.length,
            ),
          ),
          if (hasNextPage)
            const SliverToBoxAdapter(
              child: Center(
                  child: Padding(
                padding: EdgeInsets.all(5.0),
                child: CircularProgressIndicator(),
              )),
            ),
        ],
      ),
    );
  }

  Widget _buildUpcomingEpisodeCard({
    required BuildContext context,
    required Query$GetUpcomingEpisodes$Page$media? media,
    required Color color,
  }) {
    if (media == null) return const SizedBox();

    try {
      return Container(
        width: 215,
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.only(
          left: 8,
          bottom: 8,
        ),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [color, AppColors.japaneseIndigo],
          ),
          shadows: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 106,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Text(
                      media.title!.english ??
                          media.title!.romaji ??
                          media.title!.native!,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontFamily: 'Roboto-Medium',
                          ),
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    'Ep. ${media.airingSchedule!.nodes![0]!.episode} in'
                    '\n${FormattingUtils.formatDurationFromSeconds(media.airingSchedule!.nodes![0]!.timeUntilAiring)}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: AppColors.lightSilver,
                        ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            // Anime Poster
            Padding(
              padding: const EdgeInsets.only(top: 7, right: 5),
              child: media.coverImage?.large == null
                  ? _buildPlaceholderImage85x120()
                  : CachedNetworkImage(
                cacheManager: ImageCacheManager.instance,
                      imageUrl: media.coverImage!.large!,
                      width: 85,
                      height: 120,
                      imageBuilder: (context, imageProvider) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      placeholder: (context, url) =>
                          _buildPlaceholderImage85x120(),
                      errorWidget: (context, url, error) =>
                          _buildPlaceholderImage85x120(),
                    ),
            ),
          ],
        ),
      );
    } catch (_) {
      return const SizedBox();
    }
  }

  Widget _buildPlaceholderImage85x120() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(Assets.placeholders85x120),
    );
  }

  Widget _buildSearchOption(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: InkWell(
        onTap: () {
          UIUtils.showSnackBar(context, 'Coming soon...');
        },
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 50,
          decoration: ShapeDecoration(
            color: AppColors.jet,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              SvgPicture.asset(Assets.iconsSearchSmall),
              const SizedBox(
                width: 10,
              ),
              Text(
                HomeConstants.discover,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppColors.white.withOpacity(0.5),
                      fontFamily: 'Poppins',
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
