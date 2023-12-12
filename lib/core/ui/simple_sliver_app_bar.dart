import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../theme/colors.dart';
import 'back_button.dart';

class SimpleSliverAppBar extends StatelessWidget {
  const SimpleSliverAppBar(
      {super.key,
      required this.title,
      this.actions,
      this.isPinned,
      this.floating});

  final String title;
  final List<Widget>? actions;
  final bool? isPinned;
  final bool? floating;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: (context.canPop()) ? CustomBackButton(context: context) : null,
      title: Text(title, style: Theme.of(context).textTheme.displayMedium),
      backgroundColor: AppColors.raisinBlack,
      elevation: 0,
      actions: actions,
      centerTitle: false,
      pinned: isPinned == null ? false : true,
      floating: floating == null ? false : true,
    );
  }
}
