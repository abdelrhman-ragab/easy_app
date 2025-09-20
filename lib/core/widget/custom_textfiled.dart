 import 'package:easy_app/core/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? iconPath;
  final double width;
  final double height;
final Widget? prefixIcon;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.iconPath,
    this.width = 340,
    this.height = 56,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        textAlign: TextAlign.right,
        style: AppStyles.textStyle12w400FF.copyWith(
          fontSize: 12.sp,
          height: 1.5,
        ),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: AppStyles.textStyle12w400FF.copyWith(
            fontSize: 12.sp,
            color: Colors.grey.shade400,
            height: 1.5,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 20.w,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          suffixIcon: iconPath != null
              ? Padding(
            padding: EdgeInsets.only(right: 16.w, left: 8.w),
            child: SvgPicture.asset(
              iconPath!,
              width: 24.w,
              height: 24.h,
            ),
          )
              : null,
        ),
      ),
    );
  }
}