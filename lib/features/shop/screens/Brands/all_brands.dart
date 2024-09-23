import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import '../../../../common/widgets/Brands/brand_cards.dart';
import '../../../../common/widgets/Layout/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'brand_products.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const DSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: DSizes.spaceBtwItems),

              /// -- Brands
              DGridLayout(
                itemCount: 10,
                mainAxisExtent: 70,
                itemBuilder: (context, index) => DBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(const BrandProductsScreen()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

