import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/recomendations/recomendation_anime_bloc.dart';
import 'package:otaku_world/bloc/recommended_anime/recommended_anime_bloc.dart';
import 'package:otaku_world/bloc/recommended_manga/recommended_manga_bloc.dart';
import 'package:otaku_world/bloc/trending_anime/trending_anime_bloc.dart';
import 'package:otaku_world/bloc/trending_manga/trending_manga_bloc.dart';
import 'package:otaku_world/core/ui/media_section/media_section.dart';
import 'package:otaku_world/core/ui/my_refresh_indicator.dart';
import 'package:otaku_world/features/home/widgets/upcoming_episodes_section.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import '../../../bloc/upcoming_episodes/upcoming_episodes_bloc.dart';
import '../../../constants/string_constants.dart';
import '../widgets/feature_card.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    final scaffoldController = useScrollController();

    final bottomBarBloc = context.read<BottomNavBarCubit>();

    useEffect(() {
      scaffoldController.addListener(() {
        final direction = scaffoldController.position.userScrollDirection;
        if (direction == ScrollDirection.forward) {
          if (bottomBarBloc.state is BottomNavBarNotVisible) {
            bottomBarBloc.showBottomBar();
          }
        } else if (direction == ScrollDirection.reverse) {
          if (bottomBarBloc.state is BottomNavBarVisible) {
            bottomBarBloc.hideBottomBar();
          }
        }
      });
      return null;
    }, const []);

    return MyRefreshIndicator(
      onRefresh: () async {
        return _refreshPage(context);
      },
      child: SingleChildScrollView(
        controller: scaffoldController,
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
            const UpcomingEpisodesSection(),
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
                  context.push('/reviews');
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
            MediaSection<TrendingAnimeBloc>(
              label: 'Trending Anime',
              onMorePressed: () {
                context.push('/trending_anime');
              },
              onSliderPressed: () {
                context.push('/trending_anime_slider');
              },
              heroTag: 'trending_anime',
            ),
            const SizedBox(
              height: 15,
            ),
            MediaSection<RecommendedAnimeBloc>(
              label: 'Recommended Anime',
              onMorePressed: () {
                context.push('/recommended_anime');
              },
              onSliderPressed: () {
                context.push('/recommended_anime_slider');
              },
              heroTag: 'recommended_anime',
            ),
            const SizedBox(
              height: 15,
            ),
            MediaSection<TrendingMangaBloc>(
              label: 'Trending Manga',
              onMorePressed: () {
                context.push('/trending_manga');
              },
              onSliderPressed: () {
                context.push('/trending_manga_slider');
              },
              heroTag: 'trending_manga',
            ),
            const SizedBox(
              height: 15,
            ),
            MediaSection<RecommendedMangaBloc>(
              label: 'Recommended Manga',
              onMorePressed: () {
                context.push('/recommended_manga');
              },
              onSliderPressed: () {
                context.push('/recommended_manga_slider');
              },
              heroTag: 'recommended_manga',
            ),
            const SizedBox(
              height: 15,
            ),


          ],
        ),
      ),
    );
  }

  Future<void> _refreshPage(BuildContext context) async {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    context.read<UpcomingEpisodesBloc>().add(RefreshData(client));
    context.read<TrendingAnimeBloc>().add(RefreshData(client));
    context.read<RecommendedAnimeBloc>().add(RefreshData(client));
    context.read<TrendingMangaBloc>().add(RefreshData(client));
    context.read<RecommendedMangaBloc>().add(RefreshData(client));
  }

  Widget _buildSearchOption(BuildContext context) {
    return Hero(
      tag: 'search_app_bar',
      child: Material(
        color: AppColors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: InkWell(
            onTap: () {
              context.push('/search');
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
        ),
      ),
    );
  }
}
