import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class ContactWithSupport extends StatelessWidget {
  const ContactWithSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16).r,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8).r,
      height: 79.h,
      decoration: BoxDecoration(
        color: Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xffEAEAEA)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('باقات مخصصة لك', style: TextStyless.tajawalMedium14),
          SizedBox(height: 4.h),
          Text(
            'تواصل معنا لأختيار الباقة المناسبة لك',
            style: TextStyless.tajawalRegular12.copyWith(
              color: AppColors.kTextPrimary,
            ),
          ),
          SizedBox(height: 4.h),

          Text(
            'فريق المبيعات',
            style: TextStyless.tajawalBold16.copyWith(
              color: AppColors.Kprimarycolor,
            ),
          ),
        ],
      ),
    );
  }
}
