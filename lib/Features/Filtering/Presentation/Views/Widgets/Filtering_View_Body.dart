import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/helper/Custom_divider.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/Change_Category_Button.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/Custom_Button.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/Filter_Header.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/Location_Bar.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/DoubleTextFieldSection.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/OptionsSection.dart';

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
                  color: AppColors.kSecondaryColor,
                ),
              ),
            ),
            SizedBox(height: 12.h),
            ChangeCategoryButton(),
            SizedBox(height: 28.h),
            Custom_divider(),
            SizedBox(height: 20.h),
            LocationBar(),
            SizedBox(height: 20.h),
            Custom_divider(),
            SizedBox(height: 20.h),
            DoubleTextFieldSection(title: 'الأقساط الشهرية'),
            SizedBox(height: 20.h),
            Optionssection(
              Title: 'النوع',
              optionsList: ['الكل', 'توين هاوس', 'فيلا منفصلة', 'تاون هاوس'],
            ),
            Optionssection(
              Title: 'عدد الغرف',
              optionsList: ['4 غرف', '5 غرف+', ' الكل', ' غرفتين', '3 غرف'],
            ),
            SizedBox(height: 20.h),
            DoubleTextFieldSection(
              title: 'السعر',
              hint1: 'أقل سعر',
              hint2: 'أقصى سعر',
            ),
            SizedBox(height: 20.h),
            Optionssection(
              Title: 'طريقة الدفع',
              optionsList: ['أى', 'تقسيط', 'كاش'],
            ),
            SizedBox(height: 20.h),
            Optionssection(
              Title: 'حالة العقار',
              optionsList: ['أى', 'جاهز', 'قيد الأنشاء'],
            ),
            SizedBox(height: 78.h),
            CustomButton(),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
