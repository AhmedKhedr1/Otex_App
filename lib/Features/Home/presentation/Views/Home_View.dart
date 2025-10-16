import 'package:flutter/material.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Home_View_Body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: HomeViewBody(),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: AppColors.kBackgroundColor,
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: AppColors.kTextPrimary,
      //   unselectedItemColor: Color(0xff84878F),
      //   selectedLabelStyle: TextStyless.tajawalMeduim12,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Image.asset(Assets.homeicon),
      //       label: 'الرئيسية',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset(Assets.chat),
      //       label: 'محادثة',

      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset(Assets.addBox),
      //       label: 'أضف أعلان',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset(Assets.dataset),
      //       label: 'أعلاناتى',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset(Assets.account),
      //       label: 'حسابى',
      //     ),
      //   ],
      // ),
    );
  }
}
