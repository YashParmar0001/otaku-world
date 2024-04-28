import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/recomendations/recomendation_anime_bloc.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/media_detail/media_detail_bloc.dart';
import '../../../core/ui/buttons/back_button.dart';
import '../../../core/ui/images/cover_image.dart';
import '../../../core/ui/tabs/custom_tab_bar.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';
import '../../../utils/ui_utils.dart';
import '../tabs/characters/characters.dart' as ch;
import '../tabs/overview/overview.dart';
import '../tabs/reviews/reviews.dart';
import '../tabs/social/social.dart';
import '../tabs/staff/staff.dart';
import '../tabs/stats/stats.dart';
import '../widgets/info_col.dart';
import '../widgets/status_row.dart';

class MediaDetailScreen extends HookWidget {
  const MediaDetailScreen({super.key, required this.mediaId});

  final int mediaId;
  static final tabs = [
    'Overview',
    'Characters',
    'Staff',
    'Stats',
    'Social',
    'Reviews'
  ];

  @override
  Widget build(BuildContext context) {
    dev.log('Media id: $mediaId', name: 'MediaDetail');
    final tabController = useTabController(initialLength: tabs.length);
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => _onPopInvoked(context),
      child: Scaffold(
        appBar: buildAppBar(context),
        extendBodyBehindAppBar: true,
        extendBody: true,
        body: BlocBuilder<MediaDetailBloc, MediaDetailState>(
          builder: (context, state) {
            if (state is MediaDetailInitial) {
              context.read<MediaDetailBloc>().add(
                    LoadMediaDetail(id: mediaId, client: client),
                  );
              context.read<RecommendationAnimeBloc>().setId(mediaId);
              context.read<RecommendationAnimeBloc>().add(LoadData(client));
            } else if (state is MediaDetailLoading) {
              // context.read<RecommendationAnimeBloc>().add(ResetData());

              return const Center(
                child: Text(
                  'Loading...',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              );
            } else if (state is MediaDetailLoaded) {
              final media = state.media;

              if (media.id != mediaId) {
                // context.read<MediaDetailBloc>().add(ResetMediaData());
                context.read<MediaDetailBloc>().add(
                      LoadMediaDetail(id: mediaId, client: client),
                    );
              }

              return NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  dev.log("The InnerBox is scrolled : $innerBoxIsScrolled",
                      name: "Scrolling Media Detail Screen");
                  return [
                    SliverToBoxAdapter(
                      child: buildPosterContent(
                        context,
                        media,
                        height,
                        width,
                        tabController,
                      ),
                    ),
                  ];
                },
                body: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      Overview(),
                      ch.Characters(),
                      Staff(),
                      Stats(),
                      Social(),
                      Reviews(),
                    ],
                  ),
                ),
              );
            } else if (state is MediaDetailError) {
              return Center(
                child: ErrorText(
                  message: state.message,
                  onTryAgain: () => context.read<MediaDetailBloc>().add(
                        LoadMediaDetail(
                          id: mediaId,
                          client: client,
                        ),
                      ),
                ),
              );
            }

            return const Center(
              child: Text(
                'Unknown State',
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  AppBar buildAppBar(
    BuildContext context,
  ) {
    return AppBar(
      leading: CustomBackButton(
        onPressed: () {
          if (context.canPop()) {
            context.pop();
          } else {
            context.go('/home');
          }
        },
      ),
      backgroundColor: AppColors.transparent,
      surfaceTintColor: AppColors.black,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.iconsFavourite,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.iconsMoreVertical,
          ),
        ),
      ],
    );
  }

  Widget buildPosterContent(
    BuildContext context,
    Fragment$MediaDetailed media,
    double height,
    double width,
    TabController tabController,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: UIUtils.getWidgetHeight(
            targetWidgetHeight: 430,
            screenHeight: height,
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  foregroundDecoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0x001F1F1F), Color(0xFF202020)],
                    ),
                  ),
                  height: UIUtils.getWidgetHeight(
                    targetWidgetHeight: 220,
                    screenHeight: height,
                  ),
                  width: width,
                  child: CoverImage(
                    imageUrl: media.bannerImage.toString(),
                    placeHolderName: Assets.placeholders340x72,
                    type: media.type!,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 15,
                right: 10,
                child: SizedBox(
                  width: width - 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: UIUtils.getWidgetHeight(
                          targetWidgetHeight: 292,
                          screenHeight: height,
                        ),
                        width: UIUtils.getWidgetWidth(
                          targetWidgetWidth: 200,
                          screenWidth: width,
                        ),
                        child: CoverImage(
                          imageUrl: media.coverImage!.extraLarge.toString(),
                          type: media.type!,
                          placeHolderName: Assets.placeholders210x310,
                        ),
                      ),
                      InfoColumn(
                        averageScore: media.averageScore.toString(),
                        favourites: media.favourites.toString(),
                        popularity: media.popularity.toString(),
                        startDate: media.startDate == null ? "- -" : media.startDate!.year.toString(),
                        episodes: media.episodes.toString(),
                        duration: media.duration.toString(),
                        format: media.format,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 12,
          ),
          child: Text(
            media.title!.userPreferred.toString(),
            style: Theme.of(context).textTheme.displayMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 12,
            bottom: 8,
          ),
          child: StatusRow(
            airingSchedule: media.airingSchedule,
            status: media.status,
            fontSize: 14,
            alignment: MainAxisAlignment.spaceBetween,
          ),
        ),
        CustomTabBar(
          controller: tabController,
          tabs: tabs,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  _onPopInvoked(BuildContext context) {
    dev.log('Pop called!', name: 'MediaDetail');
    if (context.canPop()) {
      context.pop();
    } else {
      context.go('/home');
    }
  }
}
