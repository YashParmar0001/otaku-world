import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/generated/assets.dart';
import '../../../theme/colors.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({
    super.key,
    required this.title,
    required this.dropdownItems,
    this.titleStyle,
  });

  final String title;
  final TextStyle? titleStyle;
  final List<DropdownMenuItem<String>> dropdownItems;
  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue = "all";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: (widget.titleStyle == null)
              ? Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  )
              : widget.titleStyle,
        ),
        const SizedBox(
          height: 15,
        ),
        DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            enabled: false,
            fillColor: AppColors.jet,
            filled: true,
          ),
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
          },
          icon: SvgPicture.asset(Assets.iconsArrowDown),
          alignment: Alignment.topCenter,
          borderRadius: BorderRadius.circular(10),
          value: selectedValue,
          dropdownColor: AppColors.jet,
          isExpanded: true,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColors.white,
              ),
          items: widget.dropdownItems,
        ),
      ],
    );
  }
}
