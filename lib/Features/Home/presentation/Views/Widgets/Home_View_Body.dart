import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/helper/Sliver_Spacer.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Category_Chips_Listview.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Custom_AppBar.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/News_Banner.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Product_card.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Subcategory_Card_Listview.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  final List<String> productimages = [
    Assets.MenHoodie,
    Assets.MenHoodie2,
    Assets.Shoes,
    Assets.MenHoodie,
    Assets.MenHoodie2,
    Assets.Shoes,
    Assets.MenHoodie,
    Assets.MenHoodie2,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: customAppBar()),
          SliverSpacer(height: 12),
          SliverToBoxAdapter(child: CategoryChipsListview()),
          SliverSpacer(height: 33),
          SliverToBoxAdapter(child: SubcategoryCardListview()),
          SliverSpacer(height: 33),
          SliverToBoxAdapter(child: NewsBanner()),
          SliverSpacer(height: 20),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16).w,
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return ProductCard(Productimage: productimages[index]);
              }, childCount: productimages.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 6.w,
                mainAxisSpacing: 6.h,
                childAspectRatio: 0.41,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
