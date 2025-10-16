
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Features/Profile/Presentation/Views/Widgets/Plan_Info_Row.dart';
import 'package:otex_app/Features/Profile/data/models/FeatureModel.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key, required this.featureList});
  final List<FeatureModel> featureList;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 217.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          featureList.length,
          (index) => PlanInfoRow(featuremodel: featureList[index]),
        ),
      ),
    );
  }
}
