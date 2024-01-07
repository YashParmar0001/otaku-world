import 'dart:developer' as dev;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/reviews/review_detail/review_detail_bloc.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/core/ui/shimmers/review_detail_shimmer.dart';
import 'package:otaku_world/features/reviews/widgets/review_by_user.dart';
import 'package:otaku_world/features/reviews/widgets/review_card.dart';
import 'package:otaku_world/features/reviews/widgets/review_profile_photo.dart';
import 'package:otaku_world/features/reviews/widgets/review_rating.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/ui_utils.dart';
import '../../../core/ui/appbars/simple_app_bar.dart';
import '../../../theme/colors.dart';
import '../../../utils/formatting_utils.dart';

class ReviewDetailScreen extends StatelessWidget {
  const ReviewDetailScreen({super.key, required this.reviewId});

  // final Fragment$Review review;
  final int reviewId;

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    const htmlData = "<center> __SPOILERS BEWARE!__\n\n__ALSO VERY HEAVILY MARIN FOCUSED :O__<\/center>\n<hr \/>\n<p>Thanks to a certain good buddy of mine who sent me easily over a hundred fan art of Marin, I finally took it upon myself to see why everyone was head over heals for this girl and by the end of the first episode I already adored her character. Fast forward to the next episode which totally becomes super fan service focused in the latter half led to me falling in love with this wild and headstrong girl in mere two episodes. Prior to this watch I've seen so much Marin in my DMs but I never knew what kind of character she was past these fan arts and well what I see in fan art is only a fraction of her character... Marin does not waste any time establishing exactly why she was considered as the waifu of the season back when this aired since she's absurdly goated and deserves that title. Marin has so many fantastic features about her but the one that stole by heart would be none other than her pure, pristine and genuine smile. This smile is fuking precious and <strong>NEEDS<\/strong> to be protected at all cost!<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1149813705794650203\/image.png'>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1149813590686171269\/image.png'>\n<p>I started liking Marin's character and personality in such a short time as she appreciates the entirety of a person rather than going purely for looks <strong>which is an impressive quality considering she's a hottie that could very easily aim for the hottest guys she may want<\/strong>. She's also relatively direct with her speech and won't beat around the bush with what she has to say. In short she doesn't suppress her emotions which is pretty important for a character's growth.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1149801037130125393\/image.png'>\n<p>More words of wisdom from Marin. I fully back this statement as gender shouldn't matter what you enjoy spending your time on.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1149812459872473229\/image.png'>\n<p>Not gonna lie, after the overwhelming presence Marin brought to the series within two episodes, it was pure bliss seeing her rarely flustered because this girl knows practically no shame.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1149813995633659924\/image.png'>\n<p>After the plethora of fanservice in the second half, the icing on the cake to conclude this fascinating episode was the last minute which showed Gojou having the most straight forward and intensely focused faced while playing through MoiGirl <strong>(which is a doujin)<\/strong> I've seen in a while... <strong>WHAT A CHAD! :O<\/strong><\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1149822117349707836\/image.png'>\n<p>I'm sure many of you have experienced what Marin has but doesn't it just make you super happy when someone checks out your recommendation? I know I'm over the moon when my close friends give something a go that I recommended and if they like it then that's a massive bonus.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1149997023291002981\/image.png'>\n<p>With Gojou finishing her dress in mere two weeks, she was overwhelmingly happy, just look at her! Marin became a completely different character in her cosplay but her smile which is her most dazzling feature still remained in all its glory. She looked genuinely stunning.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150005370035650600\/image.png'>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150005743366443108\/image.png'>\n<p>I recently returned from Comic Con myself so it couldn't have been a coincidence that the first anime I watched since returning had an episode centered around this kind of event. The topic of heat was extremely relatable as I was also was dealing with 30+ degree heat and I cannot state enough how much respect I have for cosplayers who dress up in such extreme heat. Its nothing short of extraordinary, they really do deserve all my respect. Naturally, I can never have enough of this breathtaking smile which emanates pure Marin energy.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150016289818034186\/image.png'>\n<p>At the end of the Comic Con episode, Gojou said the mystical words! As anything that he claims to be <strong>beautiful<\/strong> holds a special place in his heart, granted he was half asleep and passing out when he said it but he still did which got an adorably flustered reaction out of Marin.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150017497211351090\/image.png'>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150017338276597773\/image.png'>\n<p>Sajuna Inui is introduced in the next episode with a super unfortunate and awkward encounter. She's a popular cosplayer that goes by the name &quot;<strong>Juju<\/strong>&quot; online. Marin happens to look up to her as well.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150031562721734686\/image.png'>\n<p><span class='markdown_spoiler'><span><video muted loop autoplay controls><source src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1152970558657527899\/Sajunas_introduction.mp4' type='video\/webm'>Your browser does not support the video tag.<\/video><\/span><\/span><\/p>\n<p>I enjoyed Sajuna's little backstory and her dream of becoming a magical girl which she can't achieve since its all a work of fiction. I totally understand and relate to her reasoning for specifically wanting to wear clothing sewn by Gojou since it was love at first sight when she saw the Shizuku dress he crafted. I've also felt this way many times so I totally sympathise with her here.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150161568085049384\/image.png'>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150162218869084270\/image.png'>\n<p>I enjoyed the latter half of this episode which focused on Shinju and her aspirations to try cosplaying but her worries of failure were what prevented her from doing so.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150381908878970981\/image.png'>\n<p>I also enjoyed Gojou's speech about how people have their desires and worries even if they don't show it since some can mask it much better than others. Shinju's a good example of someone who can mask their desires due to the worries they carry and then you have Marin on the other end of the spectrum who has her desires she pursues with little to no thought about masking her worries. I also relate to Gojou's happiness when his work is acknowledged and makes people smile, people enjoying my work be it reviews, vlogs, photos or anything else makes me super happy too.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150382867478745118\/image.png'>\n<p>When I was introduced to Marin's room, it could have only been one kind of style knowing her extreme personality and boy was it <strong>STACKED<\/strong> with animanga merch! She has figures, posters and even a body pillow of Shizuku herself! Its no surprise that one would think she's a certified otaku at this point however she's far more than just that. Her room is totally her and screams pure Marin energy at its core.<\/p>\n<video muted loop autoplay controls><source src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150149832896422028\/Marins_Room.mp4' type='video\/webm'>Your browser does not support the video tag.<\/video>\n<p>Marin's pouty face when she found out Gojou and Shinju were alone during the photoshoot is pure gold. While at it, have another where she looks worried and has a pained expression yet still retains all her stellar features truly making her a goated waifu which can simply never look bad as she's a natural beauty.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150389187888033862\/image.png'>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150159949691895919\/image.png'>\n<p>Here this shop is actually meant to be <a href=\"https:\/\/www.skechers.co.uk\/?gclid=Cj0KCQjw0vWnBhC6ARIsAJpJM6eltqFqOuf0Z1tVsUNLg09AAhftZgv7BN5c4hz__mr5DPzLHCegwi4aAvR4EALw_wcB\">Skechers<\/a> but a letter had to be replaced to avoid copyright. The reason I'm sharing this is because I loooooove these shoes! I've been wearing my pair for about a year and half and they have been the most comfortable shoes I've ever worn so a nice little reference I wanted to share which occurred to me.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1150393487460667392\/image.png'>\n<p>On two occasions in the anime I was reminded of the scary nature of LN titles in all their glory be like...<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1149800488548712580\/image.png'>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1151245713666215936\/image.png'>\n<p>The penultimate episode is my fav of the series since it left me speechless by the end of it as I had to take a step back to take it all in... I don't think I can handle Marin any longer...as just when I think I've seen enough, she elevates to an even higher stature. <strong>WHO IS THIS GIRL!?<\/strong> The way she can say some scary yet absurd things with a straight face and not have a care in the world is truly mind boggling. <strong>THIS GIRL KNOWS NO SHAME!<\/strong> And I totally love her personality due to this. <strong>MARIN HOW CAN YOU SAY THAT SO CALMLY WITH A STRAIGHT FACE!<\/strong><\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1151246684479828088\/image.png'>\n<p>Throughout the series a thought had began to formulate which made me ponder about how Marin totally emanates <a href=\"https:\/\/anilist.co\/character\/172759\/Ai-Hoshino\">Ai Hoshino<\/a> energy on numerous occasions. Her reckless and carefree personality on top of being totally headstrong is what resembles Ai in Marin for me. When Marin enters a room, she steals your thunder, instantly shifting the focus from oneself to her within seconds. When she's in the room, you totally feel her presence, that's the kinda aura she's built for herself. The Ai energy and vibes in this shot are overwhelmingly strong as well.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1151248676614840420\/image.png'>\n<p>The last quarter of this episode reminded me exactly what kind of series this was. Remember the second episode? Well its elder sibling is here, bolder and spicier in every regard. This was only a photoshoot as both immersed themselves within their roles and totally forgot the situation they found themselves in but one can't look at this scenario and not consider it to be hot in some degree. Naturally as is the common trope of the romance genre, we cannot be spoilt to a kiss so early in the series as the telephone rung. Oh well, but after experiencing plenty of romance series this was to be expected. This series is still such a wholesomeness fest and this episode was outstanding!<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1151254369187156080\/image.png'>\n<p>This is a simple beach shot yet it looks glorious, its soothing and relaxing to look at which puts my mind at peace, I've totally become a sucker for this kinda scenarios.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1152690715466416249\/image.png'>\n<p>This fireworks scene in the final episode was breathtaking, I loved the 3D pan of the surroundings since I very rarely have seen it done and it was nailed fantastically here. The vibrant flashy colors in the pitch dark sky circulating our main couple's amazed expressions was perfect.<\/p>\n<video muted loop autoplay controls><source src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1152694501454905464\/Fireworks_3D_Scene.mp4' type='video\/webm'>Your browser does not support the video tag.<\/video>\n<p>Marin looked gorgeous in the magazine shoots we saw earlier and beautiful in her yukata which makes me realize this girl simply can't look bad <strong>EVER<\/strong>.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1152691427684384869\/image.png'>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1152691522345640016\/image.png'>\n<p>Before I watched this anime I knew of one scene and it was the finale, this shot right here is the only thing I knew about this anime prior to watching it alongside Marin's popularity of course, I saw it a while ago while browsing social media probably around the time this anime finished airing so I knew Marin was going to confess to a sleeping Gojou. Its still too early for our main couple to know how both truly feel about each other but I'm sure this will happen <strong>eventually<\/strong>, and I sincerely hope this will come to fruition in the sequel which has already been announced.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1152691889577922560\/image.png'>\n<p>Marin's smile glows as brightly as ever at the end just as it did when I first met her and I simply can never tire of it. She's truly a goated waifu which I will be adding to my favs and adding in style too as she's made her way straight into my top 10!<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1152692051905892474\/image.png'>\n<p>I wanted to include the OP as well since not only is it relatively catch but it quite literally tells the anime's story within the music video which is fascinating to me. I only realized this after finishing the anime which shows the first half at least following the events of the anime. It makes me wonder whether this song was purely created for the series since I can't remember the last time I saw a music video for an anime opening which portrayed the events of the series within it.<\/p>\n<center><div class='youtube' id='https:\/\/www.youtube.com\/watch?v=8pGN2YEMXHo&ab_channel=%E3%82%B9%E3%83%94%E3%83%A9%E3%83%BB%E3%82%B9%E3%83%94%E3%82%ABOfficialYouTubeChannel%28SMEJ%29'><\/div><\/center>\n<p>For my final closing notes on the series as a whole, its rather complex and complicated since I do for a fact know I love Marin's character unconditionally and I am also rapidly enjoying Gojou's development. One is an extroverted freak of nature that knows practically no shame and is blissfully carefree in all that she does whereas the one is an introverted shut-in who doesn't have any friends yet one fateful encounter has allowed a fulfilling relationship to bloom which is a treat to witness. The Inui sisters Sajuna and Shinju were introduced for a few episodes midway only to completely disappear which doesn't really make them memorable. I enjoyed their characters at the time but then I got more Marin screen time and the Inui sisters very easily became forgettable. I'm totally biased here since I'm well aware I'm watching this series purely for Marin and her love interest in Gojou. This bias developed as early as the second episode which solidified my understanding on Marin as a character and it has only grown stronger as I finished the final episode. Its been a really long time since I came across a character that instantaneously dazzled me to this degree with all their glory and it wasn't only for an episode or two. Marin has been phenomenal literally from the second half of the first episode where she revealed her passion of cosplay and never let go of her grip on her goated waifu material status. Maybe I'm still being slightly deceived due to recency bias of finishing this series but every episode I craved for Marin and most episodes reminded me exactly why I longed for this screen time. Not often have I come across such wild and carefree characters and I'm pretty sure this isn't recency bias as Marin is here to stay in my memories for a lengthy time. With that said, I personally feel that Marin alone is superior to the series she's part of which makes scoring rather challenging. I don't want to say she carries this anime but practically most of my enjoyment is this angel and if she was missing then my enjoyment would plummet to the ground massively I feel. That's why I've ended up giving the score I did but its still likely to fluctuate.<\/p>\n<img width='800' src='https:\/\/cdn.discordapp.com\/attachments\/635602177833959439\/1155457941311328277\/image.png'>\n<p>I'm well aware this post became very heavily Marin focused but I cannot understate how much she has charmed me over the course of this series and I hope I've done her justice here. She's literally the reason why I even watched the anime, as I wanted to find out why everyone was head over heels for this girl during the season when it aired and boy do I understand now. I have to thank my buddy <a target='_blank' href='https:\/\/anilist.co\/user\/Alen28'>@Alen28<\/a> for sending a plethora of Marin fan art over time which finally convinced me to check out what she's about and my god was it a blessing!<\/p>\n<p>If you've made it all the way here and have read the entire review then you have my utmost respect and I salute you for taking the time to read another one of marathon reviews so thank you very much!<\/p>\n<hr />";

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => _onPopInvoked(context),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const SimpleAppBar(
          title: '',
          bgColor: AppColors.transparent,
        ),
        body: SingleChildScrollView(
          child: BlocBuilder<ReviewDetailBloc, ReviewDetailState>(
            builder: (context, state) {
              if (state is ReviewDetailInitial) {
                context
                    .read<ReviewDetailBloc>()
                    .add(LoadReviewDetail(id: reviewId, client: client));
                return const ReviewDetailShimmer();
              } else if (state is ReviewDetailLoading) {
                return const ReviewDetailShimmer();
              } else if (state is ReviewDetailLoaded) {
                final review = state.review;
                if (review.id != reviewId) {
                  context
                      .read<ReviewDetailBloc>()
                      .add(LoadReviewDetail(id: reviewId, client: client));
                }

                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // cover image
                    Container(
                      foregroundDecoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Color(0x001F1F1F), Color(0xFF202020)],
                        ),
                      ),
                      height: UIUtils.getWidgetHeight(
                        targetWidgetHeight: 340,
                        screenHeight: height,
                      ),
                      width: width,
                      child: _buildCoverImage(
                        review.media!.coverImage!.extraLarge.toString(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 10),
                      child: Text(
                        '${_getMediaType(review.mediaType!)} Review',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontFamily: 'Roboto',
                                ),
                      ),
                    ),
                    _buildTitleSection(width, review),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: buildSummaryText(
                        summary: review.summary.toString(),
                        context: context,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: _buildProfileSection(context, review),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        FormattingUtils.formatUnixTimestamp(review.createdAt)
                            .toString(),
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontFamily: 'Roboto',
                                  color: AppColors.white.withOpacity(0.8),
                                ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 10),
                      child: Text(
                        "(Last Updated on ${FormattingUtils.formatUnixTimestamp(review.createdAt).toString()})",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontFamily: 'Roboto',
                                  color: AppColors.white.withOpacity(0.8),
                                ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     left: 15.0,
                    //     right: 15,
                    //     bottom: 10,
                    //   ),
                    //   child: Text(
                    //     review.body.toString(),
                    //     style: Theme.of(context).textTheme.titleLarge,
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 10,
                      ),
                      child: ReviewRating(
                        rating: review.rating.toString(),
                        averageScore: review.score.toString(),
                      ),
                    ),
                  ],
                );
              } else if (state is ReviewDetailError) {
                return ErrorText(
                  message: state.message,
                  onTryAgain: () {
                    context
                        .read<ReviewDetailBloc>()
                        .add(LoadReviewDetail(id: reviewId, client: client));
                  },
                );
              } else {
                return const Text('Unknown State');
              }
            },
          ),
        ),
      ),
    );
  }

  void _onPopInvoked(BuildContext context) {
    dev.log('Pop called!', name: 'ReviewDetail');
    if (context.canPop()) {
      context.pop();
    } else {
      context.go('/home');
    }
  }

  String _getMediaType(Enum$MediaType type) {
    return type == Enum$MediaType.ANIME ? 'Anime' : 'Manga';
  }

  Widget _buildTitleSection(double screenWidth, Fragment$ReviewDetail review) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15),
          width: UIUtils.getWidgetWidth(
              targetWidgetWidth: 280, screenWidth: screenWidth),
          child: ReviewByUser(
            mediaTitle: review.media!.title!.userPreferred.toString(),
            userName: review.user!.name.toString(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.iconsMoreHorizontal),
          ),
        )
      ],
    );
  }

  Widget _buildCoverImage(String url) {
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (context, imageProvider) {
        return Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      errorWidget: (context, url, error) {
        return Image.asset('name');
      },
    );
  }

  Widget _buildProfileSection(
      BuildContext context, Fragment$ReviewDetail review) {
    return Row(
      children: [
        ReviewProfilePhoto(
          profilePicUrl: review.user!.avatar!.medium.toString(),
          radius: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          review.user!.name.toString(),
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
