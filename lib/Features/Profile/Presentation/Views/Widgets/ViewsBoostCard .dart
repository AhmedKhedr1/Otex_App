import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class ViewsBoostCard extends StatelessWidget {
  final String number;

  const ViewsBoostCard({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 71.w,
      height: 74.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 60.w,
            height: 30.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    width: 60.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: Color(0xffF5F8F5),
                      border: Border(
                        top: BorderSide(color: Color(0xff3A813F), width: 2),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(90),
                        topRight: Radius.circular(90),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 6.h,
                  child: Text(
                    number,
                    style: TextStyless.tajawalBold14.copyWith(
                      color: Color(0xff3A813F),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            'ضعف عدد المشاهدات',
            textAlign: TextAlign.center,
            style: TextStyless.tajawalRegular12,
          ),
        ],
      ),
    );
  }
}
