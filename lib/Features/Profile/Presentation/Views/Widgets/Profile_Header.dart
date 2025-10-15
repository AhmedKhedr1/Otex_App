import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12).r,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                Assets.chevron_right,
                height: 24.w,
                width: 24.w,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 12.w),
              Text(
                'أختر الباقات اللى تناسبك',
                style: TextStyless.tajawalMedium24.copyWith(
                  color: AppColors.kTextPrimary,
                ),
              ),
            ],
          ),
          Text(
            'أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك',
            style: TextStyless.tajawalRegular14.copyWith(
              color: AppColors.kSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
