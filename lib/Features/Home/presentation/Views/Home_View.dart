import 'package:flutter/material.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Custom_NavBar.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Home_View_Body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: HomeViewBody(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
