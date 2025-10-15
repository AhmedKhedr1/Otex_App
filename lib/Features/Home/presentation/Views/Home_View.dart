import 'package:flutter/material.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Home_View_Body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFFFFFF), body: HomeViewBody());
  }
}
