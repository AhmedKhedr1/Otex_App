import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/LabelWithIcon.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  Widget build(BuildContext context) {
    return Container(
      width: 158.w,
      height: 360.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xffDBDBDD), width: 1),
      ),
      child: Column(
        children: [
          Image.asset(
            Assets.MenHoodie,
            height: 215.h,
            width: 158.w,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                LabelWithIcon(
                  label: 'جاكيت من الصوف مناسب',
                  textcolor: Color(0xff090F1F),
                  image: Assets.Offers,
                  imageWidth: 20,
                  imageheight: 20,
                ),
                LabelWithIcon(
                  label: '32,000,000جم/60,000,000',
                  image: Assets.favourite,
                  textcolor: Color(0xffFF4144),
                  imageWidth: 24,
                  imageheight: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
