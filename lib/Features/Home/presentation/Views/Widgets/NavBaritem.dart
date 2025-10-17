import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class NavBaritem extends StatelessWidget {
  NavBaritem({
    super.key,
    required this.image,
    required this.label,
    required this.color,
    this.onTap,
    required this.isSelected,
  });
  final String image, label;
  final Color color;
  void Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(image, height: 24, width: 24, fit: BoxFit.cover),
          Text(
            label,
            style: TextStyless.tajawalMeduim12.copyWith(color: color),
          ),
          SizedBox(height: 4.h),
          if (isSelected)
            Container(
              width: 50.w,
              height: 1.8.h,
              decoration: BoxDecoration(
                color: AppColors.kTextPrimary,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(60.r),
                  bottomLeft: Radius.circular(60.r),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
