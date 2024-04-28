import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/all_time_popular_anime/all_time_popular_anime_bloc.dart';
import 'package:otaku_world/bloc/all_time_popular_manga/all_time_popular_manga.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:otaku_world/bloc/calendar/week_calendar/day/day_bloc.dart';
import 'package:otaku_world/bloc/calendar/week_calendar/week_calendar_bloc.dart';
import 'package:otaku_world/bloc/filter/collections/external_links/anime/anime_platforms_cubit.dart';
import 'package:otaku_world/bloc/filter/collections/genres/genre_cubit.dart';
import 'package:otaku_world/bloc/filter/filter_anime/filter_anime_bloc.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/media_detail/media_detail_bloc.dart';
import 'package:otaku_world/bloc/recomendations/recomendation_anime_bloc.dart';
import 'package:otaku_world/bloc/recommended_anime/recommended_anime_bloc.dart';
import 'package:otaku_world/bloc/recommended_manga/recommended_manga_bloc.dart';
import 'package:otaku_world/bloc/reviews/review_detail/review_detail_bloc.dart';
import 'package:otaku_world/bloc/reviews/reviews/review_bloc.dart';
import 'package:otaku_world/bloc/routes/redirect_route_cubit.dart';
import 'package:otaku_world/bloc/search/search_anime/search_anime_bloc.dart';
import 'package:otaku_world/bloc/search/search_characters/search_characters_bloc.dart';
import 'package:otaku_world/bloc/search/search_manga/search_manga_bloc.dart';
import 'package:otaku_world/bloc/search/search_staff/search_staff_bloc.dart';
import 'package:otaku_world/bloc/search/search_studios/search_studios_bloc.dart';
import 'package:otaku_world/bloc/search/search_users/search_users_bloc.dart';
import 'package:otaku_world/bloc/text_field/clear_text_cubit.dart';
import 'package:otaku_world/bloc/top_100_anime/top_100_anime_bloc.dart';
import 'package:otaku_world/bloc/top_100_manga/top_100_manga.dart';
import 'package:otaku_world/bloc/top_airing_anime/top_airing_anime_bloc.dart';
import 'package:otaku_world/bloc/top_upcoming_anime/top_upcoming_anime_bloc.dart';
import 'package:otaku_world/bloc/trending_anime/trending_anime_bloc.dart';
import 'package:otaku_world/bloc/trending_manga/trending_manga_bloc.dart';
import 'package:otaku_world/bloc/upcoming_episodes/upcoming_episodes_bloc.dart';
import 'package:otaku_world/theme/app_theme.dart';

import 'bloc/paginated_data/paginated_data_bloc.dart';
import 'config/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit()..authenticate(),
        ),
        BlocProvider(
          create: (context) => GraphqlClientCubit(),
        ),
        BlocProvider(
          create: (context) => RedirectRouteCubit(),
        ),
        BlocProvider(
          create: (context) => BottomNavBarCubit(),
        ),
        BlocProvider(
          create: (context) => ClearTextCubit(),
        ),
        BlocProvider(
          create: (context) => UpcomingEpisodesBloc(),
        ),
        BlocProvider(
          create: (context) => TrendingAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => RecommendedAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => TrendingMangaBloc(),
        ),
        BlocProvider(
          create: (context) => RecommendedMangaBloc(),
        ),
        BlocProvider(
          create: (context) => ReviewBloc(),
        ),
        BlocProvider(
          create: (context) => WeekCalendarBloc()..add(InitializeCalendar()),
        ),
        BlocProvider(
          create: (context) => ReviewDetailBloc(),
        ),
        BlocProvider(
          create: (context) => MediaDetailBloc(),
        ),
        BlocProvider(
          create: (context) => SearchAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => SearchMangaBloc(),
        ),
        BlocProvider(
          create: (context) => SearchCharactersBloc(),
        ),
        BlocProvider(
          create: (context) => SearchStaffBloc(),
        ),
        BlocProvider(
          create: (context) => SearchStudiosBloc(),
        ),
        BlocProvider(
          create: (context) => SearchUsersBloc(),
        ),
        BlocProvider(
          create: (context) => RecommendationAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => TopAiringAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => TopUpcomingAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => AllTimePopularAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => AllTimePopularMangaBloc(),
        ),
        BlocProvider(
          create: (context) => Top100AnimeBloc(),
        ),
        BlocProvider(
          create: (context) => Top100MangaBloc(),
        ),
        BlocProvider(
          create: (context) => DayBloc(DateTime.now()),
        ),
        BlocProvider(
          create: (context) => GenreCubit(),
        ),
        BlocProvider(
          create: (context) => AnimePlatformsCubit(),
        ),
        BlocProvider(
          create: (context) => FilterAnimeBloc(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              router.refresh();
              if (state is Authenticated) {
                context
                    .read<GraphqlClientCubit>()
                    .initializeGraphqlClient(state.token);
              } else if (state is UnAuthenticated) {
                context.read<UpcomingEpisodesBloc>().add(ResetData());
                context.read<ReviewBloc>().add(ResetData());
                context.read<TrendingAnimeBloc>().add(ResetData());
                context.read<RecommendedAnimeBloc>().add(ResetData());
                context.read<TrendingMangaBloc>().add(ResetData());
                context.read<RecommendedMangaBloc>().add(ResetData());
                context.read<TopAiringAnimeBloc>().add(ResetData());
                context.read<TopUpcomingAnimeBloc>().add(ResetData());
                context.read<AllTimePopularAnimeBloc>().add(ResetData());
                context.read<AllTimePopularMangaBloc>().add(ResetData());
                context.read<Top100AnimeBloc>().add(ResetData());
                context.read<Top100MangaBloc>().add(ResetData());
              }
            },
          ),
          BlocListener<GraphqlClientCubit, GraphqlClientState>(
            listener: (context, state) {
              if (state is GraphqlClientInitialized) {
                context
                    .read<UpcomingEpisodesBloc>()
                    .add(LoadData(state.client));
                context.read<ReviewBloc>().add(LoadData(state.client));
                context.read<TrendingAnimeBloc>().add(LoadData(state.client));
                context
                    .read<RecommendedAnimeBloc>()
                    .add(LoadData(state.client));
                context.read<TrendingMangaBloc>().add(LoadData(state.client));
                context
                    .read<RecommendedMangaBloc>()
                    .add(LoadData(state.client));

                context.read<TopAiringAnimeBloc>().add(LoadData(state.client));
                context
                    .read<TopUpcomingAnimeBloc>()
                    .add(LoadData(state.client));
                context
                    .read<AllTimePopularAnimeBloc>()
                    .add(LoadData(state.client));
                context
                    .read<AllTimePopularMangaBloc>()
                    .add(LoadData(state.client));
                context.read<Top100AnimeBloc>().add(LoadData(state.client));
                context.read<Top100MangaBloc>().add(LoadData(state.client));
              }
            },
          ),
        ],
        child: MaterialApp.router(
          theme: AppTheme.getTheme(),
          routerConfig: router,
          showSemanticsDebugger: false,
        ),
      ),
    );
  }
}
