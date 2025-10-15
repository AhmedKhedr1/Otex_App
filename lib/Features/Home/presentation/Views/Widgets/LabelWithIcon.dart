// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class LabelWithIcon extends StatelessWidget {
  LabelWithIcon({
    super.key,
    required this.labelp1,

    required this.labelp2,
    required this.image,
    required this.imageWidth,
    required this.imageheight,
    this.textcolor1,
    this.textcolor2,
  });
  final String labelp1, labelp2, image;
  final double imageWidth, imageheight;
  Color? textcolor1, textcolor2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: labelp1,
                  style: TextStyless.tajawalMedium14.copyWith(
                    color: textcolor1,
                  ),
                ),
                TextSpan(
                  text: labelp2,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: textcolor2,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Color(0xff808080),
                    decorationThickness: 2,
                  ),
                ),
              ],
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(width: 1.5.w),
        Image.asset(
          image,
          height: imageWidth,
          width: imageheight,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
