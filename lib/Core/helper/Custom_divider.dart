import 'package:flutter/material.dart';

class Custom_divider extends StatelessWidget {
  Custom_divider({super.key, this.indent, this.endIndent});
  double? indent, endIndent;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Color(0xffE6E6E6),
      thickness: 1.4,
      endIndent: endIndent ?? 0,
      indent: indent ?? 0,
      height: 0,
    );
  }
}
