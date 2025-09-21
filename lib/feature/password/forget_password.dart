import 'package:easy_app/core/helper/my_navgator.dart';
import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/core/widget/buttom.dart';
import 'package:easy_app/core/widget/custom_app_bar.dart';
import 'package:easy_app/core/widget/custom_textfiled.dart';
import 'package:easy_app/feature/password/view/otp_screen.dart';
import 'package:easy_app/feature/password/view/update.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        CustomAppBar(title: "تغير كلمة المرور",),
       Padding(
           padding: const EdgeInsets.only(right: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               SizedBox(
                 width: 283.w, // أو قللها شوية لو عايز مسافة من اليسار
                 child: Text(
                   "ادخل رقم الهاتف / البريد الالكتروني لاستعادة كلمة المرور",
                   style: AppStyles.textStyle14w400FF.copyWith(color: AppColors.kgray),
                   textAlign: TextAlign.right, // ✅ النص من اليمين
                   softWrap: true,             // ✅ يلف تلقائي
                 ),
               ),
             ],
           ),
         ),
        SizedBox(height: MediaQuery.of(context).size.height/30,),
        CustomTextField(hintText: "", controller: TextEditingController()),
        Spacer(flex: 8,),
        CustomButton(
          text: "تاكيد",
          onPressed: (){MyNavigator.goTo(context, OtpScreen(),);},
          height: 48.h,
          width: 335.w,
        ),
        Spacer(flex: 1,),
      ],),
    );
  }
}