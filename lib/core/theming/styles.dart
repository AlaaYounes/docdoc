import 'package:docdoc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.bold, color: AppColor.blackColor);
  static TextStyle font32primaryBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: AppColor.primaryColor);
  static TextStyle font13GreyRegular = TextStyle(
      fontSize: 13.sp, fontWeight: FontWeight.w400, color: AppColor.greyColor);
  static TextStyle font16WhiteSemiBold = TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.w600, color: AppColor.whiteColor);
}
