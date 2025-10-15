import 'package:flutter/material.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/Filtering_View_Body.dart';

class FilteringView extends StatelessWidget {
  const FilteringView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: FilteringViewBody(),
    );
  }
}
