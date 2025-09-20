import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/core/widget/Custom_Svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIcons extends StatelessWidget {
  const CustomIcons({super.key, required this.image, required this.text});
final String image;
final String text;
  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            
              Icon(Icons.arrow_back_ios_new_outlined),
             Row(children: [
              Text(text,
              style: AppStyles.textStyle14w400FF.copyWith(
                color: AppColors.Ktexticons
              )
              ),
            SizedBox(width: MediaQuery.of(context).size.width/30,),

              CustomSvg(path: image,
                width: 16.w,
                height: 16.h,
                color: AppColors.kplue,
                )
             ],)
          
            ],),
        );
  }
}