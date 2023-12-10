import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/recommended_anime/recommended_anime_bloc.dart';
import 'package:otaku_world/bloc/recommended_manga/recommended_manga_bloc.dart';
import 'package:otaku_world/bloc/trending_anime/trending_anime_bloc.dart';
import 'package:otaku_world/bloc/trending_manga/trending_manga_bloc.dart';
import 'package:otaku_world/theme/app_theme.dart';

import 'bloc/upcoming_episodes/upcoming_episodes_bloc.dart';
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
      ],
      child: MaterialApp.router(
        theme: AppTheme.getTheme(),
        routerConfig: router,
      ),
    );
  }
}
