import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/Layout/grid_layout.dart';
import 'package:untitled/common/widgets/Products/Product%20Cards/product_card_vertical.dart';
import 'package:untitled/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/Brands/brand_showcase.dart';
import '../../../../../utils/constants/helpers/image_strings.dart';
import '../../../../../utils/constants/helpers/sizes.dart';

class DCategoryTab extends StatelessWidget {
  const DCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Brands
              const DBrandShowCase(images: [
                DImages.productImage5, DImages.productImage40, DImages.productImage50]),
              const SizedBox(height: DSizes.spaceBtwItems),

              /// -- Products
              DSectionHeading(title: 'You might also like', onPressed: () {}),
              const SizedBox(height: DSizes.spaceBtwItems),

              DGridLayout(
                  itemCount: 4, itemBuilder: (_, index) => const DProductCardVertical()),
              const SizedBox(height: DSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
