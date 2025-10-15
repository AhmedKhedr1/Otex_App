import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class CategoryChips extends StatelessWidget {
  const CategoryChips({
    super.key,
    required this.Title,
    required this.isSelected,
  });
  final String Title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      height: 41.h,
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffFEF7F3) : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xffEBE7F3), width: 1),
      ),
      child: Text(
        Title,
        
        style: TextStyless.tajawalMedium14.copyWith(
          color: isSelected ? Color(0xffF95B1C) : Color(0xff84878F),
        ),
      ),
    );
  }
}
