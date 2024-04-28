import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/generated/assets.dart';
import '../../../theme/colors.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({
    super.key,
    required this.title,
    required this.dropdownItems,
    this.titleStyle,
    required this.initialValue,
    required this.onChange,
  });

  final String title;
  final TextStyle? titleStyle;
  final List<String> dropdownItems;
  final String initialValue;
  final Function(String) onChange;

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  late String selectedValue;

  @override
  Widget build(BuildContext context) {
    selectedValue = widget.initialValue;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: (widget.titleStyle == null)
              ? Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  )
              : widget.titleStyle,
        ),
        const SizedBox(
          height: 15,
        ),
        DropdownButtonFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabled: false,
            fillColor: AppColors.jet,
            filled: true,
          ),
          onChanged: (value) {
            setState(() {
              if (value != null) {
                widget.onChange(value);
                selectedValue = value;
              }
            });
          },
          icon: SvgPicture.asset(Assets.iconsArrowDown),
          alignment: Alignment.topCenter,
          borderRadius: BorderRadius.circular(10),
          value: selectedValue,
          dropdownColor: AppColors.jet,
          isExpanded: true,
          style: Theme.of(context).textTheme.headlineSmall,
          items: widget.dropdownItems
              .map(
                (field) => DropdownMenuItem(
                  value: field,
                  child: Text(field),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
