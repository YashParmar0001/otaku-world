import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/services/caching/image_cache_manager.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'dart:developer' as dev;
import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../generated/assets.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../utils/ui_utils.dart';
import '../appbars/simple_app_bar.dart';
import '../buttons/primary_button.dart';
import '../error_text.dart';

class MediaSliderScreen<B extends PaginatedDataBloc> extends StatelessWidget {
  const MediaSliderScreen({
    super.key,
    required this.sectionHeader,
  });

  final String sectionHeader;

  @override
  Widget build(BuildContext context) {
    final controller = CarouselController();
    final size = MediaQuery.of(context).size;

    dev.log('Width: ${size.width} | Height: ${size.height}', name: 'Size');
    final List<Color> cardColors = [
      AppColors.sunsetOrange,
      AppColors.crayola,
      AppColors.kiwi,
    ];

    return Scaffold(
      appBar: SimpleAppBar(
        title: sectionHeader,
      ),
      body: BlocBuilder<B, PaginatedDataState>(
        builder: (context, state) {
          if (state is PaginatedDataInitial || state is PaginatedDataLoading) {
            return const Center(
              child: Text('Pleas wait loading..'),
            );
          } else if (state is PaginatedDataLoaded) {
            return Center(
              child: CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    if (index + 5 >= state.list.length) {
                      dev.log('Max scrolled', name: 'Media Slider');
                      final bloc = context.read<B>();
                      final hasNextPage =
                          (bloc.state as PaginatedDataLoaded).hasNextPage;
                      if (hasNextPage) {
                        final client = (context.read<GraphqlClientCubit>().state
                                as GraphqlClientInitialized)
                            .client;
                        bloc.add(LoadData(client));
                      }
                    }
                  },
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  viewportFraction: 0.7,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  height: UIUtils.getWidgetHeight(
                      targetWidgetHeight: 650, screenHeight: size.height),
                ),
                items: state.list.asMap().entries.map((entry) {
                  int index = entry.key;
                  Fragment$MediaShort? media = entry.value;

                  return _buildMediaCard(
                    context: context,
                    width: UIUtils.getWidgetWidth(
                        targetWidgetWidth: 240, screenWidth: size.width),
                    screenWidth: size.width,
                    color: cardColors[index % cardColors.length],
                    media: media,
                  );
                }).toList(),
              ),
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
    );
  }

  Widget _buildMediaCard({
    required BuildContext context,
    required double width,
    required double screenWidth,
    required Color color,
    required Fragment$MediaShort? media,
  }) {
    return Container(
      width: width,
      // height: 650,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [color, AppColors.japaneseIndigo],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 20,
                ),
                child: _buildMediaPoster(
                  media?.coverImage?.extraLarge,
                  media!.type!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                ),
                child: Column(
                  children: [
                    Text(
                      media.title!.userPreferred!,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                      textAlign: TextAlign.left,
                      maxLines: 3,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Assets.iconsFavourite),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          media.favourites == null
                              ? '0'
                              : media.favourites.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    _buildStatusRow(context, media),
                    const SizedBox(
                      height: 15,
                    ),
                    _buildGenres(context, media),
                    const SizedBox(
                      height: 15,
                    ),
                    _buildMediaDetails(context, media),
                  ],
                ),
              ),
            ],
          ),
          // Positioned(
          //   bottom: 20,
          //   left: 12,
          //   right: 12,
          //   child: _buildButtonOptions(screenWidth),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            child: _buildButtonOptions(screenWidth),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonOptions(double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PrimaryButton(
          onTap: () {},
          label: 'Add to List',
          color: AppColors.darkCharcoal,
          width: UIUtils.getWidgetWidth(
            targetWidgetWidth: 100,
            screenWidth: screenWidth,
          ),
          fontSize: 14,
          horizontalPadding: 0,
          verticalPadding: 7,
          radius: 8,
        ),
        PrimaryButton(
          onTap: () {},
          label: 'View more',
          width: UIUtils.getWidgetWidth(
            targetWidgetWidth: 100,
            screenWidth: screenWidth,
          ),
          fontSize: 14,
          horizontalPadding: 0,
          verticalPadding: 7,
          radius: 8,
        ),
      ],
    );
  }

  Widget _buildMediaDetails(BuildContext context, Fragment$MediaShort media) {
    if (media.type == Enum$MediaType.ANIME) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildMediaDetail(
            context,
            toJson$Enum$MediaFormat(media.format ?? Enum$MediaFormat.$unknown),
            (media.episodes == null) ? '? ep' : '${media.episodes} ep',
          ),
          SvgPicture.asset(Assets.iconsLineVertical),
          _buildMediaDetail(
            context,
            '${media.meanScore}%',
            'score',
          ),
          SvgPicture.asset(Assets.iconsLineVertical),
          _buildMediaDetail(
            context,
            '${FormattingUtils.getSeason(media.season)} ${media.seasonYear}',
            'season',
          ),
        ],
      );
    } else if (media.type == Enum$MediaType.MANGA) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildMediaDetail(
            context,
            toJson$Enum$MediaFormat(media.format!),
            (media.chapters == null) ? '? chap' : '${media.chapters} chap',
          ),
          SvgPicture.asset(Assets.iconsLineVertical),
          _buildMediaDetail(
            context,
            '${media.meanScore}%',
            'score',
          ),
          SvgPicture.asset(Assets.iconsLineVertical),
          _buildMediaDetail(
            context,
            (media.startDate == null) ? '?' : '${media.startDate!.year}',
            'start year',
          ),
        ],
      );
    }

    return const SizedBox();
  }

  Widget _buildMediaDetail(BuildContext context, String text, String subtext) {
    return Column(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
        ),
        Text(
          subtext,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: AppColors.white.withOpacity(0.5),
              ),
        ),
      ],
    );
  }

  Widget _buildGenres(BuildContext context, Fragment$MediaShort media) {
    if (media.genres == null) return const Text('No genre');

    List<String?> genres = media.genres!;
    List<InlineSpan> textSpans = [];

    for (int i = 0; i < genres.length; i++) {
      if (textSpans.length >= 5) {
        break;
      }

      String genre = genres[i].toString();
      textSpans.add(TextSpan(
        text: genre,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppColors.white.withOpacity(0.7),
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
      ));

      if (i < 2) {
        textSpans.add(
          TextSpan(
            text: ' · ',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppColors.sunsetOrange,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
          ),
        );
      }
    }

    return RichText(
      text: TextSpan(
        children: textSpans,
      ),
      maxLines: 2,
      overflow: TextOverflow.clip,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildStatusRow(BuildContext context, Fragment$MediaShort media) {
    if (media.airingSchedule?.nodes == null) {
      return getStatus(context, media.status);
    }

    if (media.airingSchedule!.nodes!.isNotEmpty) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getStatus(context, media.status),
          const SizedBox(
            width: 20,
          ),
          Text(
            "Ep. ${media.airingSchedule!.nodes![0]!.episode}: ${FormattingUtils.formatDurationFromSeconds(media.airingSchedule!.nodes![0]!.timeUntilAiring)}",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      );
    } else {
      return getStatus(context, media.status);
    }
  }



  Text getStatus(BuildContext context, Enum$MediaStatus? status) {
    TextStyle? style = Theme.of(context).textTheme.titleLarge?.copyWith(
          fontFamily: 'Poppins',
        );

    if (status == null) {
      return Text(
        'Unknown',
        style: style?.copyWith(
          color: AppColors.bronze,
        ),
      );
    }

    switch (status) {
      case Enum$MediaStatus.RELEASING:
        return Text(
          'Airing',
          style: style?.copyWith(
            color: AppColors.kiwi,
          ),
        );
      case Enum$MediaStatus.FINISHED:
        return Text(
          'Finished',
          style: style?.copyWith(
            color: AppColors.crayola,
          ),
        );
      case Enum$MediaStatus.NOT_YET_RELEASED:
        return Text(
          'Not yet Released',
          style: style?.copyWith(
            color: AppColors.chineseWhite,
          ),
        );
      case Enum$MediaStatus.CANCELLED:
        return Text(
          'Cancelled',
          style: style?.copyWith(
            color: AppColors.maxRed,
          ),
        );
      case Enum$MediaStatus.HIATUS:
        return Text(
          'Hiatus',
          style: style?.copyWith(
            color: AppColors.silver,
          ),
        );
      default:
        return Text(
          'Unknown',
          style: style?.copyWith(
            color: AppColors.lightSilver,
          ),
        );
    }
  }

  Widget _buildMediaPoster(String? imageUrl, Enum$MediaType type) {
    return (imageUrl != null)
        ? AspectRatio(
            aspectRatio: 21 / 30,
            child: CachedNetworkImage(
              cacheManager: ImageCacheManager.instance,
              imageUrl: imageUrl,
              fit: BoxFit.fill,
              imageBuilder: (context, imageProvider) {
                return ClipRRect(
                  borderRadius: (type == Enum$MediaType.ANIME)
                      ? BorderRadius.circular(15)
                      : BorderRadius.circular(0),
                  child: Image(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                );
              },
              placeholder: (context, url) {
                return _buildPlaceholderImage210x310(type);
              },
            ),
          )
        : _buildPlaceholderImage210x310(type);
  }

  Widget _buildPlaceholderImage210x310(Enum$MediaType type) {
    return ClipRRect(
      borderRadius: (type == Enum$MediaType.ANIME)
          ? BorderRadius.circular(15)
          : BorderRadius.circular(5),
      child: Image.asset(Assets.placeholders210x310),
    );
  }
}
