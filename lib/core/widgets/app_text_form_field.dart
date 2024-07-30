import 'package:docdoc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final EdgeInsets? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final void Function(PointerDownEvent)? onTapOutside;

  const AppTextFormField({
    super.key,
    required this.controller,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.onTapOutside,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor ?? AppColor.moreLightGreyColor,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                  color: AppColor.lighterGreyColor, width: 1.3),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide:
                  const BorderSide(color: AppColor.primaryColor, width: 1.3),
            ),
        hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      onTapOutside: onTapOutside,
    );
  }
}
