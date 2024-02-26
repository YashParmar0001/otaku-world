import 'package:flutter/material.dart';
import '../../../theme/colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final value;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          side: const BorderSide(
            color: AppColors.sunsetOrange,
            style: BorderStyle.solid,
            width: 1,
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(horizontal: -4, vertical: 0),
          checkColor: AppColors.white,
          activeColor: AppColors.sunsetOrange,
          value: selected,
          onChanged: (value) {
            setState(() {
              selected = !selected;
            });
          },
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          widget.label,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColors.white,
                fontFamily: 'Poppins',
              ),
        )
      ],
    );
  }
}
