import 'package:easy_app/core/theme/appPaddings.dart';
import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/core/widget/buttom.dart';
import 'package:easy_app/core/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  AppPaddings.mainPadding,
        child: Column(
          children: [
            SizedBox(height: 8.h,),
           CustomAppBar(title: "الشروط والأحكام", ),
            SizedBox(height: 58.h,),
            Container(
              width: 355.w,
              height: 498.h,
              decoration: BoxDecoration(
                color: AppColors.grey6
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر ." ,
                style: AppStyles.textStyle12w400LS.copyWith(height: 2),
                  textDirection: TextDirection.rtl,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
