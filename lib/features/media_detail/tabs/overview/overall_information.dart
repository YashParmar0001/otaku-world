import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/media_detail/media_detail_bloc.dart';
import 'package:otaku_world/features/media_detail/tabs/overview/info_tile.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'dart:developer' as dev;
import '../../../../theme/colors.dart';

class OverallInfo extends StatelessWidget {
  const OverallInfo({super.key});

  static const Widget tenHeightSizedBox = SizedBox(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    final media =
        (BlocProvider.of<MediaDetailBloc>(context).state as MediaDetailLoaded)
            .media;
    return Container(
      padding: const EdgeInsets.only(
        top: 14,
        bottom: 7,
        left: 11,
        right: 13,
      ),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF263749), Color(0xFF404040)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          InfoTile(
            title: "Romaji",
            data: media.title!.romaji.toString() == "null" ? "-" :  media.title!.romaji.toString(),
          ),
          tenHeightSizedBox,
          InfoTile(
            title: "English",
            data: media.title!.english.toString(),
          ),
          tenHeightSizedBox,
          InfoTile(
            title: "Native",
            data: media.title!.native.toString(),
          ),
          tenHeightSizedBox,
          InfoTile(
            title: 'Synonyms',
            data: media.synonyms!.join("\n"),
          ),
          tenHeightSizedBox,
          Container(
            color: AppColors.white.withOpacity(0.5),
            height: 1,
          ),
          tenHeightSizedBox,
          InfoTile(
            title: 'Format',
            data: toJson$Enum$MediaFormat(
                    media.format ?? Enum$MediaFormat.$unknown)
                .toString(),
          ),
          tenHeightSizedBox,
          InfoTile(
            title: 'Episodes',
            data: media.episodes.toString(),
          ),
          tenHeightSizedBox,
          InfoTile(
            title: 'Episodes Duration',
            data: "${media.duration} mins",
          ),
          tenHeightSizedBox,
          InfoTile(
            title: 'Source',
            data: toJson$Enum$MediaSource(
              media.source ?? Enum$MediaSource.$unknown,
            ).toString(),
          ),
          tenHeightSizedBox,
          InfoTile(
              title: 'Status',
              data: toJson$Enum$MediaStatus(
                media.status ?? Enum$MediaStatus.$unknown,
              ).toString()),
          tenHeightSizedBox,
          InfoTile(
            title: 'Start Date',
            data:
               media.startDate == null ?  "${media.startDate!.day}/${media.startDate!.month}/${media.startDate!.year}" : "- -",
          ),
          tenHeightSizedBox,
          InfoTile(
            title: 'End Date',
            data:
               media.endDate == null ? "${media.endDate!.day}/${media.endDate!.month}/${media.endDate!.year}" : "- -",
          ),
          tenHeightSizedBox,
          InfoTile(
            title: 'Season',
            data: "${toJson$Enum$MediaSeason(
              media.season ?? Enum$MediaSeason.$unknown,
            )} ${media.seasonYear.toString()}",
          ),
          if (media.type == Enum$MediaType.ANIME) ...[
            tenHeightSizedBox,
            Container(
              color: AppColors.white.withOpacity(0.5),
              height: 1,
            ),
            tenHeightSizedBox,
            media.studios?.edges == null
                ? const SizedBox(
                    height: 0,
                  )
                : InfoTile(
                    title: "Studios",
                    data: getStudios(media.studios!.edges!),
                  ),
            InfoTile(
              title: 'Producers',
              data: getProducers(media.studios!.edges!),
            ),
          ],
        ],
      ),
    );
  }

  String getStudios(List<Fragment$MediaDetailed$studios$edges?>? edges) {
    String studios = "";

    if (edges == null) {
      return studios;
    }

    for (Fragment$MediaDetailed$studios$edges? edge in edges) {
      if (edge != null && edge.isMain) {
        studios = "$studios${edge.node!.name}\n";
      }
    }
    return studios;
  }

  String getProducers(List<Fragment$MediaDetailed$studios$edges?>? edges) {
    String producers = "";
    if (edges == null) {
      return producers;
    }
    for (Fragment$MediaDetailed$studios$edges? edge in edges) {
      if (edge != null && !edge.isMain) {
        dev.log(edge.node!.name, name: "MediaDetailScreenProducers");
        producers = "$producers${edge.node!.name}\n";
      }
    }
    return producers;
  }
}
