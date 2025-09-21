import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/core/theme/arrow_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CustomAppBar extends StatelessWidget {
  final String? title ;
  const CustomAppBar({super.key,  this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,right: 20,left: 15,bottom: 20),
      child: Row(
        children: [
          Spacer(flex: 2,),
          Text(
            title ?? "",
            style: AppStyles.textStyle18w400.copyWith(color: AppColors.kblack),
          ),
          const Spacer(flex: 1,), // بيدفع الأيقونة لليمين
          ArrowBackButton()              ],
      ),
    );
  }
}
