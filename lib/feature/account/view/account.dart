import 'package:easy_app/core/helper/my_navgator.dart';
import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_icons.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/feature/account/view/widget/custom_bar.dart';
import 'package:easy_app/feature/account/view/widget/custom_icons.dart';
import 'package:easy_app/feature/account/view/widget/custom_profile.dart';
import 'package:easy_app/feature/account/view/widget/subascrib.dart';
import 'package:easy_app/feature/other/view/common_questions.dart';
import 'package:easy_app/feature/other/view/contact_us.dart';
import 'package:easy_app/feature/other/view/terms_and_condition.dart';
import 'package:easy_app/feature/other/view/widget/share_button.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            CustomBar(),
            SizedBox(height: MediaQuery.of(context).size.height / 20),
            CustomProfile(),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            Subascrib(),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            CustomIcons(
              image: AppIcons.subscriptionIcon,
              text: "الاشتراكات",
            ),
            CustomIcons(
              image: AppIcons.faqIcon,
              text: "الأسئلة الشائعة",
              onTap: () => MyNavigator.goTo(context, CommonQuestions()),
            ),
            CustomIcons(
              image: AppIcons.conditionIcon,
              text: "الشروط والأحكام",
              onTap: () => MyNavigator.goTo(context, TermsAndCondition()),
            ),
            CustomIcons(
              image: AppIcons.callIcon,
              text: "تواصل معانا",
              onTap: () => MyNavigator.goTo(context, ContactUs()),
            ),
            CustomIcons(
              image: AppIcons.shareIcon,
              text: "مشاركة التطبيق",
              onTap: () => MyNavigator.goTo(
                context,
                ShareAppButton(appLink: ""),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height / 40),
            Text(
              "تسجيل الخروج",
              style: AppStyles.textStyle14w400FF.copyWith(
                color: AppColors.KeyePass,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 20),
          ],
        ),
      ),
    );
  }
}
