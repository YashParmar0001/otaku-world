import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/core/ui/discover_header.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

class AnimeDiscoverScreen extends HookWidget {
  const AnimeDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: DiscoverHeader(
              title: "Uncover the wonders of \nAnime",
              subtitle:
                  "Explore a Universe of Endless Possibilities,"
                      " Unveiling Hidden Gems and Beloved Classics",
            ),
          ),
          Row(
            children: [
              Container(
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
                      "Search anime...",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppColors.white.withOpacity(0.5),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 50,
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
                child: SvgPicture.asset(Assets.iconsDiscoverFilter),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
