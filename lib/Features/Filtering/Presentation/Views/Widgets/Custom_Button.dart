// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.child});
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color:AppColors.Kprimarycolor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
        child:
            child ??
            Text(
              'شاهد 10,000+ نتائج',
              style: TextStyless.tajawalBold16.copyWith(
                color: Color(0xffFFFFFF),
              ),
            ),
      ),
    );
  }
}
