import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

import 'main_app_bar.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MainAppBar(),
        body: child,
        bottomNavigationBar: SizedBox(
          height: 75,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            currentIndex: _calculateSelectedIndex(context),
            onTap: (value) => onTap(value, context),
            items: [
              _buildBottomNavBarItem(
                label: 'Home',
                icon: Assets.iconsHome,
              ),
              _buildBottomNavBarItem(
                label: 'Discover',
                icon: Assets.iconsSearch,
              ),
              _buildBottomNavBarItem(
                label: 'Social',
                icon: Assets.iconsUserGroup,
              ),
              _buildBottomNavBarItem(
                label: 'My List',
                icon: Assets.iconsBulletList,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavBarItem(
      {required String label, required String icon}) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset(
          icon,
          color: AppColors.white,
        ),
      ),
      label: label,
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset(
          icon,
          color: AppColors.sunsetOrange,
        ),
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final GoRouterState route = GoRouterState.of(context);
    final String location = route.location;
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/discover')) {
      return 1;
    }
    if (location.startsWith('/social')) {
      return 2;
    }
    if (location.startsWith('/myList')) {
      return 3;
    }
    return 0;
  }

  void onTap(int value, BuildContext context) {
    switch (value) {
      case 0:
        return context.go('/home');
      case 1:
        return context.go('/discover');
      case 2:
        return context.go('/social');
      case 3:
        return context.go('/myList');
      default:
        return context.go('/home');
    }
  }
}
