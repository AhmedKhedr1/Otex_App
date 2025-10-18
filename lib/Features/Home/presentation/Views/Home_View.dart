import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Custom_NavBar.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Home_View_Body.dart';
import 'package:otex_app/Features/Home/presentation/cubit/cubit/product_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductCubit()..loadProducts(),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        body: HomeViewBody(),
        bottomNavigationBar: const CustomNavigationBar(),
      ),
    );
  }
}
