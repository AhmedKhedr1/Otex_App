import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/CustomTextField.dart';

class DoubleTextFieldSection extends StatelessWidget {
  DoubleTextFieldSection({
    super.key,
    required this.title,
    this.hint1,
    this.hint2,
  });
  final String title;
  String? hint1, hint2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyless.tajawalMedium16.copyWith(
              color: Color(0xff808080),
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(child: CustomTextField(hinttext: hint1)),
              SizedBox(width: 12.w),
              Expanded(child: CustomTextField(hinttext: hint2)),
            ],
          ),
        ],
      ),
    );
  }
}
