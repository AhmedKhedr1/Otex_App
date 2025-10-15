import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).w,
      child: Row(
        children: [
          SizedBox(height: 45.h),
          Text(
            'أستكشف العروض',
            style: TextStyless.tajawalMedium16.copyWith(
              color: Color(0xff090F1F),
            ),
          ),
          Spacer(),
          Text(
            'الكل',
            style: TextStyless.tajawalBold16.copyWith(color: Color(0xff808080)),
          ),
          SizedBox(width: 4),
          Image.asset(Assets.ArrowBack),
        ],
      ),
    );
  }
}
