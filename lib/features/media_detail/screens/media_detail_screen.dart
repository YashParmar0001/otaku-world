import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/core/ui/images/cover_image.dart';
import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/media_detail/media_detail_bloc.dart';
import 'dart:developer' as dev;
import '../../../core/ui/buttons/back_button.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';
import '../../../utils/ui_utils.dart';

class MediaDetailScreen extends StatelessWidget {
  const MediaDetailScreen({super.key, required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => _onPopInvoked(context),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
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
          surfaceTintColor:AppColors.black,
          // backgroundColor: AppColors.raisinBlack.withOpacity(0.8),
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
            )
          ],
        ),
        body: BlocBuilder<MediaDetailBloc, MediaDetailState>(
          builder: (context, state) {
            if (state is MediaDetailInitial) {
              context.read<MediaDetailBloc>().add(
                    LoadMediaDetail(id: mediaId, client: client),
                  );
            } else if (state is MediaDetailLoading) {
              return const Text('Loading...');
            } else if (state is MediaDetailLoaded) {
              final media = state.media;

              if (media.id != mediaId) {
                context.read<MediaDetailBloc>().add(
                      LoadMediaDetail(id: mediaId, client: client),
                    );
              }
              return SingleChildScrollView(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 430,
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
                            child: SizedBox(
                              width: width - 20,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 292,
                                    width: 200,
                                    child: CoverImage(
                                      imageUrl:
                                          media.coverImage!.extraLarge.toString(),
                                      type: media.type!,
                                      placeHolderName: Assets.placeholders210x310,
                                    ),
                                  ),

                                  Column(
                                    children: [
                                      Text(
                                        ' building ep is bui',
                                        style: TextStyle(color: Colors.white,),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              );
            }

            return const Text('Unknown Text');
          },
        ),
      ),
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
