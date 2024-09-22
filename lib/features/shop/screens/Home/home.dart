import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/shop/screens/All%20Product/all_product.dart';
import 'package:untitled/features/shop/screens/Home/widgets/home_appbar.dart';
import 'package:untitled/features/shop/screens/Home/widgets/home_categories.dart';
import 'package:untitled/features/shop/screens/Home/widgets/promo_slider.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import '../../../../common/widgets/Custom shapes/Containers/primary_header_container.dart';
import '../../../../common/widgets/Custom shapes/Containers/search_container.dart';
import '../../../../common/widgets/Layout/grid_layout.dart';
import '../../../../common/widgets/Products/Product Cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/helpers/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            const DPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  DHomeAppBar(),
                  SizedBox(height: DSizes.spaceBtwSections),

                  /// -- SearchBar
                  DSearchContainer(
                    text: 'Search in Store',
                    padding: EdgeInsets.symmetric(horizontal: DSizes.defaultSpace),
                  ),
                  SizedBox(height: DSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: DSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        DSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: DColors.white),
                        SizedBox(height: DSizes.spaceBtwItems),

                        /// Categories
                        DHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: DSizes.spaceBtwSections),
                ],
              ),
            ),

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(DSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo Slider
                  const TPromoSlider(
                    banners: [
                      DImages.promoBanner1,
                      DImages.promoBanner2,
                      DImages.promoBanner3
                    ],
                  ),
                  const SizedBox(height: DSizes.spaceBtwSections),

                  /// -- Heading
                  DSectionHeading(
                      title: 'Popular Products',
                      showActionButton: true,
                      onPressed: () => Get.to(const AllProductsScreen())),
                  const SizedBox(height: DSizes.spaceBtwSections),

                  /// -- Popular Product
                  DGridLayout(
                      itemCount: 6,
                      itemBuilder: (_, index) => const DProductCardVertical()),
                ],
              ),
            ),
            const SizedBox(height: DSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
