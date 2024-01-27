import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:otaku_world/bloc/calendar/calendar_bloc.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
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
import 'package:otaku_world/bloc/upcoming_episodes/upcoming_episodes_bloc.dart';
import 'package:otaku_world/bloc/recommended_anime/recommended_anime_bloc.dart';
import 'package:otaku_world/bloc/recommended_manga/recommended_manga_bloc.dart';
import 'package:otaku_world/bloc/trending_anime/trending_anime_bloc.dart';
import 'package:otaku_world/bloc/trending_manga/trending_manga_bloc.dart';
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
          create: (context) =>
          AuthCubit()
            ..authenticate(),
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
          create: (context) => CalendarBloc(),
        ),
        BlocProvider(
          create: (context) => ReviewDetailBloc(),
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
                context
                    .read<UpcomingEpisodesBloc>()
                    .add(ResetData());
                context.read<ReviewBloc>().add(ResetData());
                context.read<TrendingAnimeBloc>().add(ResetData());
                context.read<RecommendedAnimeBloc>().add(ResetData());
                context.read<TrendingMangaBloc>().add(ResetData());
                context.read<RecommendedMangaBloc>().add(ResetData());
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
              }
            },
          ),
        ],
        child: MaterialApp.router(
          theme: AppTheme.getTheme(),
          routerConfig: router,
        ),
      ),
    );
  }
}
