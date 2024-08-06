import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/ui_utils.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import '../../../theme/colors.dart';

class GridShimmer extends StatelessWidget {
  const GridShimmer(
      {super.key, required this.mediaType, this.crossAxisCount = 3});

  final Enum$MediaType mediaType;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
      padding: const EdgeInsets.only(left: 10, right: 10),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: (mediaType == Enum$MediaType.ANIME)
              ? BorderRadius.circular(15)
              : BorderRadius.circular(5),
          child: Shimmer(
            child: Container(
              height: UIUtils.getWidgetHeight(
                targetWidgetHeight: 148,
                screenHeight: size.height,
              ),
              width: UIUtils.getWidgetWidth(
                targetWidgetWidth: 100,
                screenWidth: size.width,
              ),
              color: AppColors.htmlGray,
            ),
          ),
        );
      },
      itemCount: 30,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: crossAxisCount,
        childAspectRatio: 0.6,
      ),
    );
  }
}
