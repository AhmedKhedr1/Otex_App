import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class LabelWithIcon extends StatelessWidget {
  LabelWithIcon({
    super.key,
    required this.label,
    required this.image,
    required this.imageWidth,
    required this.imageheight,
    this.textcolor,
  });
  final String label, image;
  final double imageWidth, imageheight;
  Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            label,
            style: TextStyless.tajawalMedium14.copyWith(color: textcolor),
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
