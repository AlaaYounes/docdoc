import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColor.blackColor);
  static TextStyle font24primaryBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColor.primaryColor);

  static TextStyle font32primaryBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColor.primaryColor);

  static TextStyle font13primaryRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColor.primaryColor);

  static TextStyle font13GreyRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColor.greyColor);

  static TextStyle font13BlackBold = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColor.blackColor);

  static TextStyle font14GreyRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColor.greyColor);

  static TextStyle font14LightGreyRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColor.lightGreyColor);

  static TextStyle font14DarkBlueMedium = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColor.darkBlueColor);

  static TextStyle font16WhiteSemiBold = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColor.whiteColor);
}
