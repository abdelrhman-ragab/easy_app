import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_icons.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/feature/account/view/widget/custom_easyText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
          image: AssetImage("assets/images/surface1.png"))
        ),
        height:34.h ,
        width: 28.w,
        child: Container(
          margin: EdgeInsets.only(bottom: 20,left: 18),
          decoration: BoxDecoration(
             color: Colors.blue,
            borderRadius: BorderRadius.circular(90)
          ),
          width: 6.w,
          height: 10.h,
         child: Center(
           child: Text("3",style: TextStyle(
            fontSize: 10,
            color: AppColors.kwhgit,
            fontWeight: FontWeight.w400
           ),),
         ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 25,left: 35),
        child: Container(
          height: 25.h,
          width: 65.w,
          child: Center(
            child: Text("حسابي",
            style: AppStyles.textStyle18w400
            ),
          ),
        ),
      ),
       EasyText()
    
    ],
    );
  }
}