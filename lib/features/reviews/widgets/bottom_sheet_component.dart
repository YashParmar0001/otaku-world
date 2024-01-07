import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetComponent extends StatelessWidget {
  const BottomSheetComponent(
      {super.key, required this.iconName, required this.text});

  final String iconName;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(iconName),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
