import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/OptionCard.dart';

class Optionssection extends StatefulWidget {
  const Optionssection({
    super.key,
    required this.Title,
    required this.optionsList,
  });
  final String Title;
  final List<String> optionsList;

  @override
  State<Optionssection> createState() => _OptionssectionState();
}

class _OptionssectionState extends State<Optionssection> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.Title,
            style: TextStyless.tajawalMedium16.copyWith(
              color: Color(0xff808080),
            ),
          ),
          SizedBox(height: 12.h),
          Wrap(
            children: List.generate(widget.optionsList.length, (index) {
              final isSelected = index == selectedIndex;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: OptionCard(
                  title: widget.optionsList[index],
                  isSelected: isSelected,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
