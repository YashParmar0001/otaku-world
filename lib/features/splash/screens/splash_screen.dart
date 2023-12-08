import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/auth/auth_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          context.go('/login');
        }else if (state is Authenticated) {
          dev.log('User Authenticated', name: 'Auth');
          context.go('/home');
        }
      },
      child: const Scaffold(
        body: Center(
          child: Text('This is Splash Screen'),
        ),
      ),
    );
  }
}
