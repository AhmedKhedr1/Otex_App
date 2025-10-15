import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';
import 'package:otex_app/Features/Home/data/models/Subcategory_Model.dart';

class SubcategoryCard extends StatelessWidget {
  const SubcategoryCard({super.key, required this.categotymodel});
  final SubcategoryModel categotymodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 73.w,
          height: 56.h,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
          child: Image.asset(categotymodel.image, fit: BoxFit.cover),
        ),
        SizedBox(height: 6.h),
        Text(
          categotymodel.name,
          style: TextStyless.tajawalRegular12.copyWith(
            color: Color(0xff090F1F),
          ),
        ),
      ],
    );
  }
}
