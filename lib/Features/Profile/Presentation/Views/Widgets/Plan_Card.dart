import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/helper/Custom_divider.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';
import 'package:otex_app/Features/Profile/Presentation/Views/Widgets/Feature_ListView.dart';
import 'package:otex_app/Features/Profile/Presentation/Views/Widgets/ViewsBoostCard%20.dart';
import 'package:otex_app/Features/Profile/data/models/PlanModel%20.dart';

class PlanCard extends StatelessWidget {
  PlanCard({super.key, required this.planModel});
  final PlanModel planModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16).r,
      margin: EdgeInsets.symmetric(horizontal: 16).r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xffE6E6E6), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                planModel.isSelected! ? Assets.Checbkox : Assets.Bounding_box,
                height: 24.h,
                width: 24.w,
              ),
              SizedBox(width: 4.w),
              Text(
                planModel.title,
                style: TextStyless.tajawalBold16.copyWith(
                  color: planModel.isSelected!
                      ? Color(0xff3B4CF2)
                      : AppColors.kTextPrimary,
                ),
              ),
              Spacer(),
              Text(
                planModel.price,
                style: TextStyless.tajawalBold16.copyWith(
                  color: Color(0xffF95B1C),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xffF95B1C),
                  decorationThickness: 1,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Custom_divider(),
          SizedBox(height: 12.h),
          Row(
            children: [
              FeatureListView(featureList: planModel.features),
              planModel.numOfViews == null
                  ? SizedBox.shrink()
                  : ViewsBoostCard(number: planModel.numOfViews.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
