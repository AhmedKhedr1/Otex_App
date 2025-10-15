import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/LabelWithIcon.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.Productimage});
final String Productimage;
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
           Productimage,
            height: 215.h,
            width: 158.w,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                LabelWithIcon(
                  labelp1: 'جاكيت من الصوف مناسب',
                  labelp2: '',
                  textcolor1: AppColors.kTextPrimary,
                  textcolor2: null,
                  image: Assets.Offers,
                  imageWidth: 20,
                  imageheight: 20,
                ),
                SizedBox(height: 8.h),
                LabelWithIcon(
                  labelp1: '32,000,000جم/',
                  labelp2: '60,000,000',
                  image: Assets.favourite,
                  textcolor1: Color(0xffFF4144),
                  textcolor2: Color(0xff808080),
                  imageWidth: 24,
                  imageheight: 24,
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Image.asset(
                      Assets.fire,
                      height: 12.r,
                      width: 12.w,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      'تم بيع 3.3k+',
                      style: TextStyless.tajawalRegular10.copyWith(
                        color: Color(0xff84878F),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Image.asset(Assets.CompanyBadge),
                    Spacer(),
                    Container(
                      height: 24.h,
                      width: 32.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Color(0xffE6E6E6), width: 1),
                      ),
                      child: Image.asset(
                        Assets.ShoppingCart,
                        height: 16.h,
                        width: 16.w,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Image.asset(Assets.CompanyLogo, height: 22.h, width: 15.w),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
