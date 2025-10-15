import 'package:flutter/material.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Features/Profile/Presentation/Views/Widgets/ProfileView_Body.dart';

class Profileview extends StatelessWidget {
  const Profileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: ProfileviewBody(),
    );
  }
}
