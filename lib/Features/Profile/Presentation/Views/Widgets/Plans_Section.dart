import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Features/Profile/Presentation/Views/Widgets/Plan_Card.dart';
import 'package:otex_app/Features/Profile/data/models/FeatureModel.dart';
import 'package:otex_app/Features/Profile/data/models/PlanModel%20.dart';

class PlansSection extends StatelessWidget {
  PlansSection({super.key});
  final List<PlanModel> PlanList = [
    PlanModel(
      title: 'أساسية',
      price: '3,000ج.م',
      features: [
        FeatureModel(icon: Assets.acute, text: 'صلاحية الأعلان 30 يوم'),
      ],
      isRecommended: true,
      isSelected: false,
    ),
    PlanModel(
      title: 'أكسترا',
      price: '3,000ج.م',
      features: [
        FeatureModel(icon: Assets.acute, text: 'صلاحية الأعلان 30 يوم'),
        FeatureModel(icon: Assets.rocket, text: 'رفع لأعلى القائمة كل 3 أيام'),
        FeatureModel(
          icon: Assets.keep,
          text: 'تثبيت فى مقاول صحى',
          Subtext: '( خلال ال48 ساعة القادمة )',
        ),
      ],
      isRecommended: true,
      isSelected: true,
      numOfViews: 7,
    ),
    PlanModel(
      title: 'بلس',
      price: '3,000ج.م',
      features: [
        FeatureModel(icon: Assets.acute, text: 'صلاحية الأعلان 30 يوم'),
        FeatureModel(icon: Assets.rocket, text: 'رفع لأعلى القائمة كل 2 يوم'),
        FeatureModel(
          icon: Assets.keep,
          text: 'تثبيت فى مقاول صحى',
          Subtext: '( خلال ال48 ساعة القادمة )',
        ),
        FeatureModel(icon: Assets.globe, text: 'ظهور فى كل محافظات مصر'),
        FeatureModel(icon: Assets.workspace_premium, text: 'أعلان مميز'),
        FeatureModel(icon: Assets.keep, text: 'تثبيت فى مقاول صحى فى الجهراء'),
        FeatureModel(
          icon: Assets.keep,
          text: 'تثبيت فى مقاول صحى',
          Subtext: '( خلال ال48 ساعة القادمة )',
        ),
      ],
      isRecommended: true,
      isSelected: true,
      numOfViews: 18,
    ),
    PlanModel(
      title: 'سوبر',
      price: '3,000ج.م',
      features: [
        FeatureModel(icon: Assets.acute, text: 'صلاحية الأعلان 30 يوم'),
        FeatureModel(icon: Assets.rocket, text: 'رفع لأعلى القائمة كل 2 يوم'),
        FeatureModel(
          icon: Assets.keep,
          text: 'تثبيت فى مقاول صحى',
          Subtext: '( خلال ال48 ساعة القادمة )',
        ),
        FeatureModel(icon: Assets.globe, text: 'ظهور فى كل محافظات مصر'),
        FeatureModel(icon: Assets.workspace_premium, text: 'أعلان مميز'),
        FeatureModel(icon: Assets.keep, text: 'تثبيت فى مقاول صحى فى الجهراء'),
        FeatureModel(
          icon: Assets.keep,
          text: 'تثبيت فى مقاول صحى',
          Subtext: '( خلال ال48 ساعة القادمة )',
        ),
      ],
      isRecommended: true,
      isSelected: false,
      numOfViews: 24,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        PlanList.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 12).r,
          child: PlanCard(planModel: PlanList[index]),
        ),
      ),
    );
  }
}
