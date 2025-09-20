import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_icons.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/core/widget/Custom_Svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Subascrib extends StatelessWidget {
  const Subascrib({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
            color: Color.fromARGB(98, 228, 209, 61),
              borderRadius: BorderRadius.circular(16.r)
            ),
            height: 54.h,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Text("الترقية إلي النسخة المميزة",
                  style: AppStyles.textStyle14w700FF.copyWith(
                    color: AppColors.Korange
                  )
                  ),
                ],),
                SizedBox(width: 10.w,),
            CustomSvg(path: AppIcons.crownIcon)
            ],),
          ),
        );
  }
}