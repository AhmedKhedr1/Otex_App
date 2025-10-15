import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class LocationBar extends StatelessWidget {
  const LocationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16).r,
      child: Row(
        children: [
          Image.asset(
            Assets.Location,
            width: 24.w,
            height: 24.h,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16.w),
          RichText(
            text: TextSpan(
              style: TextStyless.tajawalMedium14.copyWith(height: 1.3),
              children: [
                TextSpan(
                  text: 'الموقع\n',
                  style: TextStyless.tajawalMedium14.copyWith(
                    color: AppColors.kTextPrimary,
                  ),
                ),
                TextSpan(
                  text: 'مصر',
                  style: TextStyless.tajawalRegular12.copyWith(
                    color:AppColors.kTextPrimary,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset(
            Assets.chevron_backward,
            width: 24.w,
            height: 24.h,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
