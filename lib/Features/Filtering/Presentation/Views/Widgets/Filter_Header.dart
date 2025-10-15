import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class Filter_Header extends StatelessWidget {
  const Filter_Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).r,
      child: Row(
        children: [
          GestureDetector(
            onTap: () => GoRouter.of(context).pop(),
            child: Image.asset(
              Assets.Close,
              width: 24.w,
              height: 24.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12.w),
          Text('فلترة', style: TextStyless.tajawalMedium24.copyWith(color: AppColors.kTextPrimary)),
          Spacer(),
          Text(
            'رجوع للأفتراضى',
            style: TextStyless.tajawalBold16.copyWith(color: AppColors.Kprimarycolor),
          ),
        ],
      ),
    );
  }
}
