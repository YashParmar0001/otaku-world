import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/core/ui/discover_header.dart';
import 'package:otaku_world/features/discover/widgets/discover_card.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';


import '../../../bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';

class DiscoverScreen extends HookWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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

    return SingleChildScrollView(
      controller: scaffoldController,
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: DiscoverHeader(
                title: "Ignite your Anime \nAdveture",
                subtitle:
                    "Immerse Yourself in a World of Discovery, Uncovering Exciting"
                    " Animes, Fascinating Mangas, and Iconic Characters."),
          ),
          const SizedBox(
            height: 10,
          ),
          DiscoverCard(
            onTap: () {
              context.push('/discover-anime');
            },
            title: "Anime",
            beginColors: AppColors.raisinBlack,
            endColors: AppColors.sunsetOrange,
            child: const DiscoverCardImage(
              radius: 15.0,
              angle: 0.11,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          DiscoverCard(
            onTap: () {
              context.push('/discover-manga');
            },
            title: "Manga",
            beginColors: AppColors.raisinBlack,
            endColors: AppColors.kiwi,
            child: const DiscoverCardImage(
              radius: 15.0,
              angle: 0.11,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          DiscoverCard(
            onTap: () {
              context.push('/discover-characters');
            },
            title: "Characters",
            beginColors: AppColors.raisinBlack,
            endColors: AppColors.crayola,
            child: const DiscoverCharacterPosters(),
          ),
          const SizedBox(
            height: 20,
          ),
          DiscoverCard(
            onTap: () {
              context.push('/discover-staff');
            },
            title: "Staff",
            beginColors: AppColors.raisinBlack,
            endColors: AppColors.trueBlue,
            child: const DiscoverCardImage(
              radius: 15.0,
              angle: 0.11,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          DiscoverCard(
            onTap: () {
              context.push('/discover-studios');
            },
            title: "Studios",
            beginColors: AppColors.raisinBlack,
            endColors: AppColors.darkMagenta,
            child: const DiscoverStudiosPosters(),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class DiscoverCharacterPosters extends StatelessWidget {
  const DiscoverCharacterPosters({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 308,
          height: 135,
          child: Image.asset(Assets.charactersCharacters),
        ),
      ],
    );
  }
}

class DiscoverStudiosPosters extends StatelessWidget {
  const DiscoverStudiosPosters({
    super.key,
    this.radius = 15,
  });

  final double radius;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: -0.15,
                  child: Container(
                    width: 141,
                    height: 74,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radius),
                    ),
                    child: Image.asset(
                      Assets.studiosKyotoAnimation,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 135,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 135,
                ),
                Transform.rotate(
                  angle: 0.1,
                  child: Container(
                    width: 140,
                    height: 105,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radius),
                    ),
                    child: Image.asset(
                      Assets.studiosToeiAnimation,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

class DiscoverCardImage extends StatelessWidget {
  const DiscoverCardImage({
    super.key,
    this.angle = 0.0,
    this.radius = 0.0,
  });

  final double radius;
  final double angle;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(
              angle: -angle,
              child: Container(
                height: 125,
                width: 85,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      blurRadius: 3,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Image.asset(
                  Assets.imagesAnimeImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 85,
            ),
            Transform.rotate(
              angle: angle,
              child: Container(
                height: 125,
                width: 85,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      blurRadius: 3,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Image.asset(
                  Assets.imagesAnimeImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 150,
          width: 95,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.7),
                blurRadius: 3,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Image.asset(
            Assets.imagesAnimeImage,
            height: 125,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
