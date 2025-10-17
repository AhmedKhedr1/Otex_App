import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app/Core/helper/Custom_divider.dart';
import 'package:otex_app/Core/utils/App_Colors.dart';
import 'package:otex_app/Core/utils/App_Router.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/NavBaritem.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 62.h,
      decoration: BoxDecoration(color: AppColors.kBackgroundColor),
      child: Column(
        children: [
          Custom_divider(color: Color(0xffE6E6E6), endIndent: 0, indent: 0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8).r,
            child: Row(
              children: [
                Expanded(
                  child: NavBaritem(
                    image: Assets.homeicon,
                    label: 'الرئيسية',
                    color: currentIndex == 0
                        ? AppColors.kTextPrimary
                        : Color(0xff84878F),
                    onTap: () {
                      setState(() => currentIndex = 0);
                    },
                    isSelected: currentIndex == 0,
                  ),
                ),
                Expanded(
                  child: NavBaritem(
                    image: Assets.chat,
                    label: 'محادثة',
                    color: currentIndex == 1
                        ? AppColors.kTextPrimary
                        : Color(0xff84878F),
                    onTap: () {
                      setState(() => currentIndex = 1);
                    },
                    isSelected: currentIndex == 1,
                  ),
                ),
                Expanded(
                  child: NavBaritem(
                    image: Assets.addBox,
                    label: 'أضف أعلان',
                    color: Color(0xff0062E2),
                    onTap: () {
                      setState(() => currentIndex = 2);
                    },
                    isSelected: currentIndex == 2,
                  ),
                ),
                Expanded(
                  child: NavBaritem(
                    image: Assets.dataset,
                    label: 'أعلاناتى',
                    color: currentIndex == 3
                        ? AppColors.kTextPrimary
                        : Color(0xff84878F),
                    onTap: () {
                      setState(() => currentIndex = 3);
                    },
                    isSelected: currentIndex == 3,
                  ),
                ),
                Expanded(
                  child: NavBaritem(
                    image: Assets.account,
                    label: 'حسابى',
                    color: currentIndex == 4
                        ? AppColors.kTextPrimary
                        : Color(0xff84878F),
                    onTap: () {
                      setState(() => currentIndex = 4);
                      GoRouter.of(context).push(AppRouter.KProfileView);
                    },
                    isSelected: currentIndex == 4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
