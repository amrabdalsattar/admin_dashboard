import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';


class CustomTextField extends StatelessWidget {
  final String title, hint;
  const CustomTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16(context),),
        const SizedBox(height: 12,),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppStyles.styleRegular16(context).copyWith(color: AppColors.grey),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
            fillColor: AppColors.liteGrey,
            filled: true,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: AppColors.transparent));
  }
}
