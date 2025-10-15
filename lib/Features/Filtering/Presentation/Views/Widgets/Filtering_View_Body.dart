import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/Change_Category_Button.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/Filter_Header.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/Location_Bar.dart';

class FilteringViewBody extends StatelessWidget {
  const FilteringViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 16).r,
        child: ListView(
          children: [
            Filter_Header(),
            SizedBox(height: 32.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16).r,
              child: Text(
                'الفئة',
                style: TextStyless.tajawalMedium16.copyWith(
                  color: Color(0xff808080),
                ),
              ),
            ),
            SizedBox(height: 12.h),
            ChangeCategoryButton(),
            SizedBox(height: 28.h),
            Divider(color: Color(0xffE6E6E6), thickness: 1),
            SizedBox(height: 20.h),
            LocationBar(),
            SizedBox(height: 20.h),
            Divider(
              color: Color(0xffE6E6E6),
              thickness: 1,
              endIndent: 0,
              indent: 0,
              height: 0,
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16).r,
              child: Text(
                'الأقساط الشهرية',
                style: TextStyless.tajawalMedium16.copyWith(
                  color: Color(0xff808080),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
