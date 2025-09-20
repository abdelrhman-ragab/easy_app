import 'package:easy_app/core/helper/my_navgator.dart';
import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/core/theme/custom_app_bar.dart';
import 'package:easy_app/core/widget/buttom.dart';
import 'package:easy_app/core/widget/custom_textfiled.dart';
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
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 52.h,
              width: 283.w,
              child: Text("ادخل رقم الهاتف / البريد الالكتروني لاستعادة\n                                                                          كلمة المرور",
              style: AppStyles.textStyle14w400FF.copyWith(color: AppColors.kgray),
              )),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height/30,),
        CustomTextField(hintText: "", controller: TextEditingController()),
        Spacer(flex: 8,),
        CustomButton(text: "تاكيد", onPressed: (){MyNavigator.goTo(context, UpdatePassword());}),
        Spacer(flex: 1,),
      ],),
    );
  }
}