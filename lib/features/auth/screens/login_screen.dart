import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';

import 'package:otaku_world/bloc/upcoming_episodes/upcoming_episodes_bloc.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/ui_utils.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import '../../../bloc/recommended_anime/recommended_anime_bloc.dart';
import '../../../bloc/recommended_manga/recommended_manga_bloc.dart';
import '../../../bloc/reviews/review_bloc.dart';
import '../../../bloc/trending_anime/trending_anime_bloc.dart';
import '../../../bloc/trending_manga/trending_manga_bloc.dart';
import '../../../constants/string_constants.dart';
import '../../../core/ui/buttons/primary_button.dart';
import '../../../core/ui/buttons/primary_outlined_button.dart';
import '../../../core/ui/appbars/simple_app_bar.dart';

final Uri authUri = Uri(
  scheme: 'https',
  host: 'anilist.co',
  path: '/api/v2/oauth/authorize',
  query: 'client_id=13595&response_type=token',
);

final Uri registerUri = Uri(
  scheme: 'https',
  host: 'anilist.co',
  path: '/signup',
);

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final graphqlState = context.read<GraphqlClientCubit>().state;
    // if (graphqlState is GraphqlClientInitialized) {
    //   context.go('/home');
    // }
    final authCubit = context.read<AuthCubit>();

    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is Authenticated) {
              context.read<GraphqlClientCubit>().initializeGraphqlClient(
                    state.token,
                  );
            } else if (state is AuthError) {
              context.pop();
              UIUtils.showSnackBar(
                context,
                'Got error while login: ${state.message}',
              );
            } else if (state is Authenticating) {
              UIUtils.showProgressDialog(context);
            }
          },
        ),
        BlocListener<GraphqlClientCubit, GraphqlClientState>(
          listener: (context, state) {
            if (state is GraphqlClientInitialized) {
              dev.log('Graphql Initialized!', name: 'Auth');
              context
                  .read<UpcomingEpisodesBloc>()
                  .add(LoadData(state.client));
              context
                  .read<TrendingAnimeBloc>()
                  .add(LoadData(state.client));
              context
                  .read<RecommendedAnimeBloc>()
                  .add(LoadData(state.client));
              context
                  .read<TrendingMangaBloc>()
                  .add(LoadData(state.client));
              context
                  .read<RecommendedMangaBloc>()
                  .add(LoadData(state.client));
              context.read<ReviewBloc>().add(LoadData(state.client));
              dev.log('Going to home screen from login', name: 'Auth');
              context.go('/home');
            }
          },
        ),
      ],
      child: Scaffold(
        appBar: const SimpleAppBar(
          title: '',
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.assetsAppLogo),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Text(
                        LoginConstants.loginToAniListHeading,
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 30,
                      child: Text(
                        LoginConstants.loginToAniListSubHeading,
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontFamily: 'Poppins',
                                  color: AppColors.white,
                                ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 30,
                      child: Text(
                        LoginConstants.registerText,
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontFamily: 'Poppins',
                                  color: AppColors.white,
                                ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 55,
                ),
                PrimaryButton(
                  onTap: () {
                    authCubit.login();
                  },
                  label: 'Log In',
                  horizontalPadding: 15,
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryOutlinedButton(
                  onTap: () {
                    authCubit.register();
                  },
                  label: 'Register',
                  horizontalPadding: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
