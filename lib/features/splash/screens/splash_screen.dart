import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/graphql/__generated/graphql/home/upcoming_episodes.graphql.dart';

import '../../../bloc/auth/auth_cubit.dart';
import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/paginated_data_bloc/paginated_data_bloc.dart';
import '../../../bloc/reviews/review_bloc.dart';
import '../../../bloc/upcoming_episodes/upcoming_episodes_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is Authenticated) {
              context.read<GraphqlClientCubit>().initializeGraphqlClient(
                state.token,
              );
            } else if (state is UnAuthenticated) {
              context.go('/login');
            }
          },
        ),
        BlocListener<GraphqlClientCubit, GraphqlClientState>(
          listener: (context, state) {
            if (state is GraphqlClientInitialized) {
              context
                  .read<UpcomingEpisodesBloc>()
                  .add(LoadUpcomingEpisodes(state.client));
              context.read<ReviewBloc>().add(LoadReviews(state.client));
              context
                  .read<UpcomingEpisodesBlocDummy<Query$GetUpcomingEpisodes$Page$media, UpcomingEpisode>>()
                  .add(LoadData(state.client));
              context.go('/home');
            }
          },
        ),
      ],
      child: const Scaffold(
        body: Center(
          child: Text('This is Splash Screen'),
        ),
      ),
    );
  }
}
