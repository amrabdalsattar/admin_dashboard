import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_images.dart';


class CustomArrow extends StatelessWidget {
  final bool isDown;
  const CustomArrow({super.key, this.isDown = false});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: isDown ? 1 : 0,
      child: SvgPicture.asset(AppImages.arrow),
    );
  }
}
