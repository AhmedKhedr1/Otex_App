import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({super.key, required this.title, required this.isSelected});

  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 6).r,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 11.5.h),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffF2F8FF) : AppColors.kBackgroundColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: isSelected ? 2 : 1,
          color: isSelected ? AppColors.Kprimarycolor : Color(0xff84878F),
        ),
      ),
      child: Text(
        title,
        style: TextStyless.tajawalMedium14.copyWith(
          color: isSelected ? AppColors.Kprimarycolor : Color(0xff84878F),
        ),
      ),
    );
  }
}
