import 'package:otex_app/Features/Profile/data/models/FeatureModel.dart';

class PlanModel {
  final String title, price;
  final List<FeatureModel> features;
  final bool isRecommended;
  final bool isSelected;
  final int? numOfViews;
  final String? Recommendedlabel;


  PlanModel({
    required this.title,
    required this.price,
    required this.features,
    required this.isRecommended,
    required this.isSelected,
     this.numOfViews,
     this.Recommendedlabel
  });
}
