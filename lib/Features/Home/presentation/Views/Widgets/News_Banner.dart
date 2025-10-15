import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class NewsBanner extends StatelessWidget {
  const NewsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      height: 32.h,
      width: 328.w,
      decoration: BoxDecoration(
        color: Color(0xffFEF7F3),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Image.asset(Assets.check),
          SizedBox(width: 4.w),
          Text(
            'شحن مجانى',
            style: TextStyless.tajawalRegular12.copyWith(
              color: Color(0xff3A813F),
            ),
          ),
          Spacer(),
          Text(
            'لأى عرض تطلبه دلوقتى !',
            style: TextStyless.tajawalRegular10.copyWith(
              color: AppColors.kTextPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
