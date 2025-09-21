import 'package:easy_app/core/theme/appPaddings.dart';
import 'package:easy_app/core/theme/app_colors.dart';
import 'package:easy_app/core/theme/app_style.dart';
import 'package:easy_app/core/widget/custom_app_bar.dart';
import 'package:easy_app/feature/other/manager/faq_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CommonQuestions extends StatefulWidget {
  const CommonQuestions({super.key});

  @override
  State<CommonQuestions> createState() => _CommonQuestionsState();
}

class _CommonQuestionsState extends State<CommonQuestions> {
  @override
  Widget build(BuildContext context) {
    final faqs = [
      {
        "question": "ما هو التطبيق؟",
        "answer": "التطبيق يساعدك في إدارة مهامك اليومية."
      },
      {
        "question": "كيف أسجل حساب؟",
        "answer":
            "نص الجواب الذي يكون هنا عادة ما يتكون من عدة أسطر . نص الجواب الذي يكون هنا عادة ما يتكون من عدة أسطر . "
      },
      {
        "question":
        "نص السؤال هنا والذي عادة ما يتكون من عدة أسطر كهذا المثال؟",
        "answer": "نعم، التطبيق مجاني مع بعض المميزات المدفوعة."
      },
      {
        "question":
        "نص السؤال هنا والذي عادة ما يتكون من عدة أسطر كهذا المثال؟",
        "answer": "نعم، التطبيق مجاني مع بعض المميزات المدفوعة."
      },
      {
        "question":
        "نص السؤال هنا والذي عادة ما يتكون من عدة أسطر كهذا المثال؟",
        "answer": "نعم، التطبيق مجاني مع بعض المميزات المدفوعة."
      },
    ];

    return BlocProvider(
      create: (_) => FaqCubit(),
      child: Scaffold(
        body: Padding(
          padding:  AppPaddings.mainPadding,
          child: Column(
            children: [
              const CustomAppBar(title: "الأسئلة الشائعة"),
              SizedBox(height: 25.h,),
              Expanded(
                child: BlocBuilder<FaqCubit, int>(
                  builder: (context, openId) {
                    return ListView.builder(
                      padding: const EdgeInsets.all(12.0),
                      itemCount: faqs.length,
                      itemBuilder: (context, index) {
                        final faq = faqs[index];
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: AppColors.grey6, // لون الخلفية
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                           child: ExpansionTile(
                            tilePadding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            trailing: const SizedBox.shrink(), // نخفي السهم الافتراضي
                            leading: AnimatedRotation(
                              duration: const Duration(milliseconds: 200),
                              turns: openId == index ? -0.5 : 0,
                              child: const Icon(Icons.keyboard_arrow_down,
                                size: 30,
                                color: AppColors.kblack,
                              ),
                            ),
                            title: Align(
                              alignment: Alignment.centerRight, // النص لليمين
                              child: Text(
                                faq["question"]!,
                                textDirection: TextDirection.rtl,
                                style: AppStyles.textStyle12w700
                                    .copyWith(color: AppColors.kplue),
                              ),
                            ),
                            initiallyExpanded: openId == index,
                            onExpansionChanged: (_) {
                              context.read<FaqCubit>().toggleQuestion(index);
                            },
                            children: [
                              const Divider(height: 1, indent: 56, endIndent: 12),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    faq["answer"]!,
                                    textDirection: TextDirection.rtl,
                                    style: AppStyles.textStyle12w400FF.copyWith(color: Colors.black26),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
