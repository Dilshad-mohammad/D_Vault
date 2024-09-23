import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/common/widgets/Custom%20shapes/Containers/search_container.dart';
import 'package:untitled/common/widgets/Layout/grid_layout.dart';
import 'package:untitled/common/widgets/Products/Cart/cart_menu_icon.dart';
import 'package:untitled/common/widgets/texts/section_heading.dart';
import 'package:untitled/features/shop/screens/Brands/all_brands.dart';
import 'package:untitled/features/shop/screens/Store/widgets/category_tab.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import '../../../../common/widgets/Appbar/tabbar.dart';
import '../../../../common/widgets/Brands/brand_cards.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../Cart/cart.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: DAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            DCartCounterIcon(onPressed: () => Get.to(const CartScreen())),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? DColors.black : DColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(DSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- SearchBar
                      const SizedBox(height: DSizes.spaceBtwItems),
                      const DSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(height: DSizes.spaceBtwSections),

                      /// -- Featured Brands

                      DSectionHeading(title: 'Featured Brands', onPressed: ()=> Get.to(const AllBrandsScreen())),
                      const SizedBox(height: DSizes.spaceBtwItems / 1.5),

                      /// -- Brand GRID
                      DGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 70,
                          itemBuilder: (_, index) {
                            return const DBrandCard(showBorder: false);
                          })
                    ],
                  ),
                ),

                /// Tabs
                bottom: const DTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },

          /// -- Body
          ///Todo: Error content page doesn't slide with tabBar.
          body: const TabBarView(
            children: [
              DCategoryTab(),
              DCategoryTab(),
              DCategoryTab(),
              DCategoryTab(),
              DCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
