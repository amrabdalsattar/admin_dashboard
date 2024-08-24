import 'package:flutter/material.dart';
import 'package:test_app/core/utils/app_colors.dart';

abstract class AppStyles {
  static const TextStyle styleRegular12 = TextStyle(
      fontSize: 12,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: AppColors.grey);

  static const TextStyle styleRegular14 = TextStyle(
      fontSize: 14,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: AppColors.grey);

  static const TextStyle styleRegular16 = TextStyle(
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: AppColors.primaryColor);

  static const TextStyle styleMedium16 = TextStyle(
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      color: AppColors.primaryColor);

  static const TextStyle styleMeduim20 = TextStyle(
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      color: AppColors.primaryColor);

  static const TextStyle styleSemiBold16 = TextStyle(
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor);
 
  static const TextStyle styleSemiBold18 = TextStyle(
      fontSize: 18,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor);

  static const TextStyle styleSemiBold20 = TextStyle(
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor);

  static const TextStyle styleSemiBold24 = TextStyle(
      fontSize: 24,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: AppColors.secondaryColor);

  static const TextStyle styleBold16 = TextStyle(
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      color: AppColors.secondaryColor);
}
