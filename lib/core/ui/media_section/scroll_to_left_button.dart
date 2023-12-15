import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class ScrollToLeftFAB extends StatefulHookWidget {
  const ScrollToLeftFAB({super.key, required this.controller});

  final ScrollController controller;

  @override
  State<ScrollToLeftFAB> createState() => _ScrollToTopFABState();
}

class _ScrollToTopFABState extends State<ScrollToLeftFAB> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    dev.log('Rebuilding go to top button', name: 'ReviewScreen');
    useEffect(() {
      widget.controller.addListener(() {
        final minScroll = widget.controller.position.minScrollExtent;
        final currentScroll = widget.controller.position.pixels;

        if (currentScroll > minScroll + 100) {
          if (!_isVisible) {
            setState(() {
              _isVisible = true;
            });
          }
        } else {
          if (_isVisible) {
            setState(() {
              _isVisible = false;
            });
          }
        }
      });
      return null;
    });

    return _isVisible
        ? Animate(
            effects: const [ScaleEffect()],
            child: Positioned(
              top: 0,
              bottom: 0,
              left: 5,
              child: FloatingActionButton.small(
                onPressed: () {
                  widget.controller.animateTo(
                    0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                backgroundColor: AppColors.sunsetOrange.withOpacity(0.60),
                child: SvgPicture.asset(Assets.iconsArrowLeft, color: AppColors.white,),
              ),
            ),
          )
        : const SizedBox();
  }
}
