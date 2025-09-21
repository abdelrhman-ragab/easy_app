import 'package:easy_app/core/helper/my_navgator.dart';
import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_icons.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/core/widget/Custom_Svg.dart';
import 'package:easy_app/core/widget/buttom.dart';
import 'package:easy_app/core/widget/custom_app_bar.dart';
import 'package:easy_app/core/widget/custom_textfiled.dart';
import 'package:easy_app/feature/password/view/reset_password.dart';
import 'package:easy_app/feature/personal%20details/view/widget/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalDetails extends StatelessWidget {
   const PersonalDetails({super.key});
 
   @override
   Widget build(BuildContext context) {
    
     var controller;
     return Scaffold(
      
     
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
       child: Column(children: [
         CustomAppBar(title: "البيانات الشخصية",),
        CustomImage(),
        SizedBox(height: MediaQuery.of(context).size.height/35,),
        CustomTextField(hintText: "اسم المستخدم", controller: TextEditingController()),
        SizedBox(height: MediaQuery.of(context).size.height/35,),
        CustomTextField(hintText: "رقم الهاتف", controller: TextEditingController()),
       SizedBox(height: MediaQuery.of(context).size.height/35,),
        CustomTextField(hintText: "البريد الالكتروني", controller: TextEditingController()),
         Row(
          mainAxisAlignment: MainAxisAlignment.end,
           children: [
             GestureDetector(
              onTap: () => MyNavigator.goTo(context,ResetPassword() ),
              child: Text("تغير كلمه المرور",style: AppStyles.textStyle12w400FF.copyWith(color: AppColors.KfirstQus),)),
               SizedBox(height: MediaQuery.of(context).size.height/25,),
               SizedBox(width: MediaQuery.of(context).size.width/30,),
             CustomSvg(
              height: 21.h,
              width: 15.w,
              path: AppIcons.lock_open,color: AppColors.KfirstQus,)
           ],
         ),
         Spacer(flex: 4,),
         CustomButton(text: 'حفظ التعديلات', height: 48.h, width: 335.w, onPressed: () {  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
        content: SizedBox(height: 50.h,),   
          title: 
           
              
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Center(child: Text("تم حفظ التعديلات بنجاح",style: AppStyles.textStyle18w400,)),
              ),
            
            
         
        
          actions: [
            CustomButton(
              text: "تم",
              height: 48.h,
              width: 335.w,
              onPressed: ()=>MyNavigator.goBack(context),
            )
          ],
        );
      },
    ); },),
       SizedBox(height: MediaQuery.of(context).size.height/25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
  onTap: () {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          ),
          child: SingleChildScrollView( 
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text("حذف الحساب", style: AppStyles.textStyle18w400)),
                SizedBox(height: 8),
                Text(
                  "هل انت متأكد من انك تريد حذف الحساب؟ سيتم حذف البيانات بشكل كامل",
                  style: AppStyles.textStyle14w400FF.copyWith(color: AppColors.kgray),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                         height: 48.h,
                         width: 335.w,
                        text: "تراجع",color: AppColors.Kbottomback,
                        
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: CustomButton(
                         height: 48.h,
                        width: 335.w,
                        text: "نعم",
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  },
  child: Text(
    "حذف الحساب",
    style: AppStyles.textStyle12w400FF.copyWith(color: AppColors.Kred),
  ),
),

           SizedBox(width: MediaQuery.of(context).size.width/50,),
           CustomSvg(path: AppIcons.deleteIcon,color: AppColors.Kred,width: 21.w,height: 21.h,)
         ],),
          Spacer(flex: 1,),
          
       ],),
     ),
     );
   }
 }