import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/ui_utils.dart';

import '../../../generated/assets.dart';
import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../services/caching/image_cache_manager.dart';
import '../../../theme/colors.dart';

class ResultMediaCard extends StatelessWidget {
  const ResultMediaCard({super.key, this.media});

  final Fragment$SearchResultMedia? media;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (media == null) return const SizedBox();

    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.japaneseIndigo, AppColors.darkCharcoal],
        ),
      ),
      child: Row(
        children: [
          _buildMediaPoster(media?.coverImage?.large, size),
          const SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: UIUtils.getWidgetWidth(
                      targetWidgetWidth: 225,
                      screenWidth: size.width,
                    ),
                    child: Text(
                      media!.title!.userPreferred!,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontFamily: 'Poppins',
                              ),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    // '2020, TV',
                    '${media!.startDate?.year == null ? '?' : media!.startDate!.year},'
                    ' ${media!.format == null ? 'Unknown' : toJson$Enum$MediaFormat(media!.format!)}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppColors.white.withOpacity(0.8),
                          fontFamily: 'Poppins',
                        ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.iconsStar,
                  ),
                  const SizedBox(width: 1),
                  Text(
                    '${media!.meanScore ?? '?'}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontFamily: 'Poppins',
                        ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMediaPoster(String? imageUrl, Size size) {
    return (imageUrl != null)
        ? CachedNetworkImage(
            cacheManager: ImageCacheManager.instance,
            imageUrl: imageUrl,
            width: UIUtils.getWidgetWidth(
              targetWidgetWidth: 91,
              screenWidth: size.width,
            ),
            fit: BoxFit.cover,
            imageBuilder: (context, imageProvider) {
              return AspectRatio(
                aspectRatio: 0.7,
                child: ClipRRect(
                  borderRadius: (media!.type == Enum$MediaType.ANIME)
                      ? BorderRadius.circular(15)
                      : BorderRadius.circular(5),
                  child: Image(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            errorWidget: (context, url, error) {
              return _buildPlaceholderImage110x162();
            },
            placeholder: (context, url) {
              return _buildPlaceholderImage110x162();
            },
          )
        : _buildPlaceholderImage110x162();
  }

  Widget _buildPlaceholderImage110x162() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(Assets.placeholders110x162),
    );
  }
}
