import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/features/reviews/widgets/review_by_user.dart';
import 'package:otaku_world/features/reviews/widgets/review_profile_photo.dart';
import 'package:otaku_world/features/reviews/widgets/review_rating.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import '../../../generated/assets.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.review});

  final Fragment$Review review;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () => context.push('/review-detail',extra: review),
      child: Container(
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
                review.media!.bannerImage.toString(),
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
                          child: ReviewByUser(
                            mediaTitle:
                                review.media!.title!.userPreferred.toString(),
                            userName: review.user!.name.toString(),
                          ),
                        ),
                        ReviewProfilePhoto(
                          profilePicUrl: review.user!.avatar!.medium.toString(),
                          radius: 20,
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
                    child: buildSummaryText(
                      summary: review.summary.toString(),
                      context: context,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      right: 5.0,
                      bottom: 15.0,
                    ),
                    child: ReviewRating(
                      averageScore: review.media!.averageScore.toString(),
                      rating: review.rating.toString(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      FormattingUtils.formatUnixTimestamp(review.createdAt)
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
                      "(Last Updated on ${FormattingUtils.formatUnixTimestamp(review.createdAt).toString()})",
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

Widget buildSummaryText(
    {required String summary, required BuildContext context}) {
  return Text(
    summary,
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
    style: Theme.of(context).textTheme.titleLarge?.copyWith(
          fontFamily: 'Roboto Condensed',
          fontWeight: FontWeight.w400,
        ),
  );
}
