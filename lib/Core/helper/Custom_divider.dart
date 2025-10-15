
import 'package:flutter/material.dart';

class Custom_divider extends StatelessWidget {
  const Custom_divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Color(0xffE6E6E6),
      thickness: 1,
      endIndent: 0,
      indent: 0,
      height: 0,
    );
  }
}
