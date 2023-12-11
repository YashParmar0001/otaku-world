import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/paginated_data_bloc/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/reviews/review_bloc.dart';
import 'package:otaku_world/bloc/upcoming_episodes/upcoming_episodes_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/home/upcoming_episodes.graphql.dart';
import 'package:otaku_world/theme/app_theme.dart';

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
          create: (context) => UpcomingEpisodesBlocDummy<
              Query$GetUpcomingEpisodes$Page$media, UpcomingEpisode>(),
        ),
        BlocProvider(
          create: (context) => ReviewBloc(),
        ),
      ],
      child: MaterialApp.router(
        theme: AppTheme.getTheme(),
        routerConfig: router,
      ),
    );
  }
}
