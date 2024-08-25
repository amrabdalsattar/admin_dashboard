import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/core/utils/app_images.dart';

class FinancialOpearionHeader extends StatelessWidget {
  final String icon;
  const FinancialOpearionHeader({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: const EdgeInsets.all(14),
            decoration: const ShapeDecoration(
                shape: OvalBorder(), color: Color(0xFFFAFAFA)),
            child: SvgPicture.asset(icon)),
        SvgPicture.asset(AppImages.arrow),
      ],
    );
  }
}
