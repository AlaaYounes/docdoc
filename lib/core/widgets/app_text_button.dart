import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? color;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;

  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.color,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight,
      required this.buttonText,
      this.textStyle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all(color ?? AppColor.primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        fixedSize: WidgetStateProperty.all(
            Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 52.h)),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.r),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: textStyle ?? TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
