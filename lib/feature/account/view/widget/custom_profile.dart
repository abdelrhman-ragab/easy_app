import 'package:easy_app/core/helper/my_navgator.dart';
import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_icons.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/core/widget/Custom_Svg.dart';
import 'package:easy_app/feature/personal%20details/view/personal_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      height: 104.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(
       "تشابي الونسو",
        textDirection: TextDirection.rtl,
        style: AppStyles.textStyle14w700FF
      ),
      SizedBox(height: 10.h,),
      Row(children: [
      
        GestureDetector(
          onTap: () => MyNavigator.goTo(context,PersonalDetails ()),
          child: Text("تعديل حسابي",
          style: AppStyles.textStyle12w400FF.copyWith(
            color: AppColors.kplue
          )
          ),
        ),
        SizedBox(width: 5.w,),
        CustomSvg(path: AppIcons.writeIcon,width: 12.w,height: 14.h,color: AppColors.kplue,)  
      ],),
    ],
          ),
          SizedBox(width: 10.w), 
          
     
     CircleAvatar(
      radius: 40.r,
      backgroundImage: AssetImage("assets/images/TshapAllonso.jpg")
    ),
         
        ],
      ),
    );
  }
}