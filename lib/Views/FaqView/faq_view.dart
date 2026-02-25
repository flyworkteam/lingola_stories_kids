import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lingolakidstories/Views/FaqView/widgets/expandable_faq_item.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_blur.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class FaqView extends HookWidget {
  const FaqView({super.key});

  @override
  Widget build(BuildContext context) {
    final faqItems = useMemoized(
      () => [
        FaqItemData(
          question: context.t.faq.questions.q1.question,
          answer: context.t.faq.questions.q1.answer,
        ),
        FaqItemData(
          question: context.t.faq.questions.q2.question,
          answer: context.t.faq.questions.q2.answer,
        ),
        FaqItemData(
          question: context.t.faq.questions.q3.question,
          answer: context.t.faq.questions.q3.answer,
        ),
        FaqItemData(
          question: context.t.faq.questions.q4.question,
          answer: context.t.faq.questions.q4.answer,
        ),
        FaqItemData(
          question: context.t.faq.questions.q5.question,
          answer: context.t.faq.questions.q5.answer,
        ),
        FaqItemData(
          question: context.t.faq.questions.q6.question,
          answer: context.t.faq.questions.q6.answer,
        ),
        FaqItemData(
          question: context.t.faq.questions.q7.question,
          answer: context.t.faq.questions.q7.answer,
        ),
        FaqItemData(
          question: context.t.faq.questions.q8.question,
          answer: context.t.faq.questions.q8.answer,
        ),
        FaqItemData(
          question: context.t.faq.questions.q9.question,
          answer: context.t.faq.questions.q9.answer,
        ),
        FaqItemData(
          question: context.t.faq.questions.q10.question,
          answer: context.t.faq.questions.q10.answer,
        ),
      ],
    );

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Stack(
        children: [
          Positioned(
            top: -250,
            left: -200,
            child: CustomBlur(color: Color(0xFFFFB256)),
          ),
          Positioned(bottom: -250, right: -200, child: CustomBlur()),
          Positioned(
            bottom: 0,
            left: 0,
            child: SvgPicture.asset(AppIcons.faqOwl),
          ),

          ListView.builder(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 16,
              left: 16,
              right: 16,
              bottom: 16,
            ),
            itemCount: faqItems.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(AppIcons.longLeftArrow),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        context.t.profile.menu.faq,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.body(20, weight: FontWeight.bold),
                      ),
                      const SizedBox(width: 48),
                    ],
                  ),
                );
              }

              final item = faqItems[index - 1];
              return ExpandableFaqItem(
                question: item.question,
                answer: item.answer,
                initiallyExpanded: index == 1,
              );
            },
          ),

          Positioned(
            top: 50,
            right: 0,
            child: SvgPicture.asset(AppIcons.kindofPageIcon),
          ),
        ],
      ),
    );
  }
}

class FaqItemData {
  final String question;
  final String answer;

  FaqItemData({required this.question, required this.answer});
}
