import 'package:easy_app/core/helper/my_navgator.dart';
import 'package:easy_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ArrowBackButton extends StatelessWidget {
   ArrowBackButton({super.key });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => MyNavigator.goBack(context),
      child: Container(
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          
        ),
        child:
           Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppColors.kblack,
          ),
        ),
    );
    
  }
}
