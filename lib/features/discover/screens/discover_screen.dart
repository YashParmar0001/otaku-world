import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Discover Screen',
          style: TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}
