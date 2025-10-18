import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Features/Profile/Presentation/Views/Widgets/ProfileView_Body.dart';
import 'package:otex_app/Features/Profile/Presentation/cubit/PlanCubit%20.dart';

class Profileview extends StatelessWidget {
  const Profileview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlanCubit(),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        body: ProfileviewBody(),
      ),
    );
  }
}
