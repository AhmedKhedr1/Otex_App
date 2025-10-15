import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/helper/Custom_divider.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16).r,
      margin: EdgeInsets.symmetric(horizontal: 16).r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xffE6E6E6), width: 1),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(Assets.Bounding_box, height: 24.h, width: 24.w),
              SizedBox(width: 4.w),
              Text(
                'أساسية',
                style: TextStyless.tajawalBold16.copyWith(
                  color: AppColors.kTextPrimary,
                ),
              ),
              Spacer(),
              Text(
                '3,000ج.م',
                style: TextStyless.tajawalBold16.copyWith(
                  color: Color(0xffF95B1C),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xffF95B1C),
                  decorationThickness: 1,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Custom_divider(),
          SizedBox(height: 12.h),
          Row(
            children: [
              Image.asset(Assets.acute, height: 24.h, width: 24.w),
              SizedBox(width: 8.w),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'صلاحية الأعلان 30 يوم',
                      style: TextStyless.tajawalMedium14.copyWith(
                        color: AppColors.kTextPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
