import 'package:otex_app/Features/Profile/data/models/FeatureModel.dart';

class PlanModel {
  final String title, price;
  final List<FeatureModel> features;
  final bool isRecommended;
  final int? numOfViews;
  final String? Recommendedlabel;


  PlanModel({
    required this.title,
    required this.price,
    required this.features,
    required this.isRecommended,
     this.numOfViews,
     this.Recommendedlabel
  });
}
