import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

import 'main_app_bar.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key, required this.child});

  final Widget child;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  var _isBottomBarVisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<BottomNavBarCubit, BottomNavBarState>(
        listener: (context, state) {
          if (state is BottomNavBarVisible) {
            setState(() {
              _isBottomBarVisible = true;
            });
          } else if (state is BottomNavBarNotVisible) {
            setState(() {
              _isBottomBarVisible = false;
            });
          }
        },
        child: Scaffold(
          appBar: const MainAppBar(),
          body: widget.child,
          bottomNavigationBar: AnimatedContainer(
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeInOutSine,
            height: _isBottomBarVisible ? 75 : 0,
            child: Wrap(
              children: [
                SizedBox(
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
              ],
            ),
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
    dev.log('Current location: $location', name: 'Routes');
    if (location.contains('/home')) {
      return 0;
    }
    if (location.contains('/discover')) {
      return 1;
    }
    if (location.contains('/social')) {
      return 2;
    }
    if (location.contains('/myList')) {
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
