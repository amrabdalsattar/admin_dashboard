import 'package:flutter/material.dart';

import '../../core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String title;
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(
            title,
            style: AppStyles.styleSemiBold18.copyWith(color: textColor),
          )),
    );
  }
}
