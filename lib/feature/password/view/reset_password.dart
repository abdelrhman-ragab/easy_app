import 'package:easy_app/core/helper/my_navgator.dart';
import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_icons.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/core/theme/custom_app_bar.dart';
import 'package:easy_app/core/widget/Custom_Svg.dart';
import 'package:easy_app/core/widget/buttom.dart';
import 'package:easy_app/core/widget/custom_textfiled.dart';
import 'package:easy_app/feature/password/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        CustomAppBar(title: "تغير كلمة المرور",),
        SizedBox(height: MediaQuery.of(context).size.height/40,),
        CustomTextField(hintText: "كلمة المرور القديمة", controller: TextEditingController(),prefixIcon: CustomSvg(path: AppIcons.eyeOn,width: 15.w,height: 15.h,color: AppColors.Kgray3,),),
         SizedBox(height: MediaQuery.of(context).size.height/40,),
        CustomTextField(hintText: " كلمة المرور الجديدة", controller: TextEditingController(),prefixIcon: CustomSvg(path: AppIcons.eyeOn,width: 15.w,height: 15.h,color: AppColors.Kgray3,)),
         SizedBox(height: MediaQuery.of(context).size.height/40,),
        CustomTextField(hintText: "اعادة ادخال كلمة المرور الجديدة", controller: TextEditingController(),prefixIcon: CustomSvg(path: AppIcons.eyeOn,width: 15.w,height: 15.h,color: AppColors.Kgray3,)),
       Row(
        mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Padding(
             padding: const EdgeInsets.only(right: 20,top: 15),
             child: GestureDetector(
              onTap: () => MyNavigator.goTo(context, ForgetPassword()),
              child: Text(" نسيت كلمة السر ؟",style: AppStyles.textStyle12w400FF.copyWith(color: AppColors.KfirstQus),)),
           ),
         ],
       ),
       Spacer(flex: 7,),
       CustomButton(text: "حفظ التعديلات", onPressed: (){}),
        Spacer(flex: 1,),
      ],),
    );
  }
}