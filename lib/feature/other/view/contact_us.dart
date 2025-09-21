
import 'package:easy_app/core/helper/my_navgator.dart';
import 'package:easy_app/core/theme/appPaddings.dart';
import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_image.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/core/widget/buttom.dart';
import 'package:easy_app/core/widget/custom_app_bar.dart';
import 'package:easy_app/core/widget/custom_textfiled.dart';
import 'package:easy_app/feature/other/view/widget/social_icons_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ContactUs extends StatelessWidget {
  const ContactUs({super.key});
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // الحواف مستديرة
          ),
          content: Container(
            width: 110.w,
            height: 197.h,
            child: Column(
              children: [
                Image.asset(Appimages.Success),
                SizedBox(height: 10,),
                Text(
                  "تم ارسال رسالتك",
                  textAlign: TextAlign.center,
                  style: AppStyles.textStyle18w400,
                ),
              ],
            ),
          ),
          actionsAlignment: MainAxisAlignment.center, // يخلي الزرار في النص
          actions: [
           CustomButton(text: "تم", onPressed: () => MyNavigator.goBack(context), width: 298.w, height: 51.h , textColor: AppColors.kwhgit,colorbut: AppColors.kplue,)
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    var nameControlaller = TextEditingController();
    var phoneControlaller = TextEditingController();
    var notesControlaller = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: AppPaddings.mainPadding,
        child: Column(
          children: [
            SizedBox(height: 8.h,),
           const CustomAppBar(title: "تواصل معانا",),
            SizedBox(height: 79.h,),
            CustomTextField(hintText: "الاسم",controller: nameControlaller),
            SizedBox(height: 22.h,),
            CustomTextField(hintText: "رقم الهاتف / البريد الالكتروني",controller: phoneControlaller),
            SizedBox(height: 22.h,),
            CustomTextField(hintText: "ادخل الملاحظات",controller: notesControlaller , mixline: 4,height: 141.h,width: 340.w,),
            SizedBox(height: 46.h,),
            Text("او تواصل معانا" , style: AppStyles.textStyle14w400C,),
            SizedBox(height: 13.h,),
            SocialIconsRow(),
            SizedBox(height: 151.h,),
            CustomButton(height: 51.h,width: 340.w,text: "ارسل",colorbut: AppColors.kplue,textColor: AppColors.kwhgit,onPressed: () {
               _showAlertDialog(context);
            },)

          ],
        ),
      ),
    );
  }
}
