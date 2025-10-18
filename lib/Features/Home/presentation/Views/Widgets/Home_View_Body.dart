import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/helper/Sliver_Spacer.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Category_Chips_Listview.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Custom_AppBar.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/News_Banner.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Product_card.dart';
import 'package:otex_app/Features/Home/presentation/Views/Widgets/Subcategory_Card_Listview.dart';
import 'package:otex_app/Features/Home/presentation/cubit/cubit/product_cubit.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

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
          BlocBuilder<ProductCubit, ProductState>(
            builder: (context, state) {
              if (state is ProductLoading) {
                return SliverToBoxAdapter(
                  child: const Center(child: CircularProgressIndicator()),
                );
              } else if (state is ProductLoaded) {
                final products = state.products;
                return SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 16).w,
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return ProductCard(productModel: products[index]);
                    }, childCount: products.length),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 6.w,
                      mainAxisSpacing: 6.h,
                      childAspectRatio: 0.41,
                    ),
                  ),
                );
              } else {
                return SliverToBoxAdapter(
                  child: const Center(child: Text('لا توجد منتجات حالياً')),
                );
              }
            },
          ),
          SliverSpacer(height: 20),
        ],
      ),
    );
  }
}
