import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Features/Home/data/models/Subcategory_Model.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/SubCategory_Card.dart';

class SubcategoryCardListview extends StatelessWidget {
  SubcategoryCardListview({super.key});

  final List<SubcategoryModel> CategoryList = [
    SubcategoryModel(name: 'موضة رجالى', image: Assets.MensFashion),
    SubcategoryModel(name: 'ساعات', image: Assets.Watches),
    SubcategoryModel(name: 'موبايلات', image: Assets.mobiles),
    SubcategoryModel(name: 'منتجات تجميل', image: Assets.Beautyproducts),
    SubcategoryModel(name: 'عقارات', image: Assets.RealEstate),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 78.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.w),

        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: SubcategoryCard(categotymodel: CategoryList[index]),
          );
        },
      ),
    );
  }
}
