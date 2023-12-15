import 'package:flutter_svg/svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../../../generated/assets.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.reviews});

  final Fragment$Review reviews;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 7.5,
      ),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 72,
            child: _buildBannerImage(
              context,
              reviews.media!.bannerImage.toString(),
            ),
          ),
          Container(
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.darkCharcoal,
                  AppColors.japaneseIndigo,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 100,
                        child: RichText(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            text: 'Review of ',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w100,
                                ),
                            children: [
                              TextSpan(
                                text: reviews.media!.title!.userPreferred
                                    .toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text: ' by ',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(fontFamily: 'Poppins'),
                              ),
                              TextSpan(
                                text: reviews.user!.name.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(21),
                            side: const BorderSide(
                              width: 1,
                              color: AppColors.sunsetOrange,
                            ),
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: AppColors.sunsetOrange,
                          radius: 20,
                          backgroundImage: CachedNetworkImageProvider(
                            reviews.user!.avatar!.large.toString(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    bottom: 5.0,
                  ),
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    reviews.summary.toString(),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontFamily: 'Roboto Condensed',
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    bottom: 15.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(Assets.iconsThumbsUp),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        reviews.rating.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontFamily: 'Poppins'),
                      ),
                      const Spacer(),
                      SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(Assets.iconsStar)),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(reviews.media!.averageScore.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontFamily: 'Poppins')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    FormattingUtils.formatUnixTimestamp(reviews.createdAt)
                        .toString(),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontFamily: 'Roboto',
                          color: AppColors.white.withOpacity(0.8),
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 10),
                  child: Text(
                    "(Last Updated on ${FormattingUtils.formatUnixTimestamp(reviews.createdAt).toString()})",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontFamily: 'Roboto',
                          color: AppColors.white.withOpacity(0.8),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBannerImage(BuildContext context, String imageUrl) {
  return CachedNetworkImage(
    imageUrl: imageUrl,
    imageBuilder: (context, imageProvider) => Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
    ),
    errorWidget: (context, url, error) {
      return _buildPlaceHolder();
    },
  );
}

Widget _buildPlaceHolder() {
  return ClipRRect(
    borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(15), topRight: Radius.circular(15)),
    child: Image.asset(Assets.placeholders340x72),
  );
}
