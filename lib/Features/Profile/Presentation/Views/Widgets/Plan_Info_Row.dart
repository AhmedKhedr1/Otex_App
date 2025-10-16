
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';
import 'package:otex_app/Features/Profile/data/models/FeatureModel.dart';

class PlanInfoRow extends StatelessWidget {
  const PlanInfoRow({super.key, required this.featuremodel});
  final FeatureModel featuremodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 4).r,
      child: Row(
        children: [
          Image.asset(featuremodel.icon, height: 24.h, width: 24.w),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  featuremodel.text,
                  softWrap: true,
                   overflow: TextOverflow.visible,
                  style: TextStyless.tajawalMedium14.copyWith(
                    color: AppColors.kTextPrimary,
                    
                  ),
                ),
                if (featuremodel.Subtext != null &&
                    featuremodel.Subtext!.isNotEmpty)
                  Text(
                    featuremodel.Subtext ?? '',
                    style: TextStyless.tajawalMedium14.copyWith(
                      color: Color(0xffFF4144),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
