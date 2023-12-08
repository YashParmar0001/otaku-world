import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/theme/colors.dart';

import 'back_button.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({super.key, required this.title, this.actions});

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: (context.canPop()) ? CustomBackButton(context: context) : null,
      title: Text(title, style: Theme.of(context).textTheme.displayMedium),
      backgroundColor: AppColors.raisinBlack,
      elevation: 0,
      actions: actions,
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(62);
}
