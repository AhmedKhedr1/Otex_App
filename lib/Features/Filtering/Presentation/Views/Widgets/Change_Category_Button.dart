import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class ChangeCategoryButton extends StatelessWidget {
  const ChangeCategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 16).r,
      child: Row(
        children: [
          Image.asset(
            Assets.RealEstateRounded,
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
                  text: 'عقارات\n',
                  style: TextStyless.tajawalMedium14.copyWith(
                    color: Color(0xff090F1F),
                  ),
                ),
                TextSpan(
                  text: 'فلل البيع',
                  style: TextStyless.tajawalRegular12.copyWith(
                    color: Color(0xff090F1F),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            'تغيير',
            style: TextStyless.tajawalBold14.copyWith(color: Color(0xff3B4CF2)),
          ),
        ],
      ),
    );
  }
}
