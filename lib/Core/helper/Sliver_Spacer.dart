
import 'package:flutter/material.dart';

class SliverSpacer extends StatelessWidget {
  const SliverSpacer({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: SizedBox(height: height));
  }
}
