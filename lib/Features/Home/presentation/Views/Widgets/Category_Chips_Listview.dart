import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Category_Chips.dart';

class CategoryChipsListview extends StatefulWidget {
  CategoryChipsListview({super.key});

  @override
  State<CategoryChipsListview> createState() => _CategoryChipsListviewState();
}

class _CategoryChipsListviewState extends State<CategoryChipsListview> {
  final List<String> Categorylsit = [
    'كل العروض',
    'ملابس',
    'أكسسوارات',
    'الكترونيات',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity.w,
      height: 41.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16).w,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          bool isSelected = index == selectedIndex;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4).w,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: CategoryChips(
                Title: Categorylsit[index],
                isSelected: isSelected,
              ),
            ),
          );
        },
      ),
    );
  }
}
