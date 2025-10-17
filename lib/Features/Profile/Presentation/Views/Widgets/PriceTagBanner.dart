
import 'package:flutter/material.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';

class PriceTagBanner extends StatelessWidget {
  final String text;

  const PriceTagBanner({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BannerClipper(),
      child: Container(
        color: const Color(0xffFFDBDB),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Text(
          text,
          style: TextStyless.tajawalMeduim12.copyWith(color: Color(0xffFF4144)),
        ),
      ),
    );
  }
}

class BannerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(10, size.height / 2);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
