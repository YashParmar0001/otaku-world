import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
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
      ],
      child: MaterialApp.router(
        theme: AppTheme.getTheme(),
        routerConfig: router,
      ),
    );
  }
}
