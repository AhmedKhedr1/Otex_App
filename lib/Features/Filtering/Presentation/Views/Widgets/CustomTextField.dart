import 'package:flutter/material.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, this.hinttext});
  String? hinttext;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyless.tajawalMedium14.copyWith(
          color: Color(0xff84878F),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: Color(0xffE6E6E6)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: Color(0xffE6E6E6)),
        ),
      ),
    );
  }
}
