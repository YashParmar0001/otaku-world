import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/theme/colors.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Text(
        //   'Discover Screen',
        //   style: TextStyle(color: AppColors.white),
        // ),
        child: ElevatedButton(
          onPressed: () {
            context.read<AuthCubit>().logOut();
          },
          child: const Text('Log Out'),
        ),
      ),
    );
  }
}
