import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/common/widgets/Custom%20shapes/Containers/rounded_container.dart';
import 'package:untitled/common/widgets/texts/d_brand_title_text_verified.dart';
import 'package:untitled/common/widgets/texts/product_price_text.dart';
import 'package:untitled/common/widgets/texts/product_title_text.dart';

import '../../../../utils/constants/helpers/colors.dart';
import '../../../../utils/constants/helpers/image_strings.dart';
import '../../../../utils/constants/helpers/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../Icons/dcircular_icons.dart';
import '../../Images/drounded_image.dart';

class DProductCardHorizontal extends StatelessWidget {
  const DProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
   return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(DSizes.productImageRadius),
    color: dark ? DColors.darkerGrey : DColors.softgrey,
    ),
      child: Row(
        children: [
          /// Thumbnail
          DRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(DSizes.sm),
            backgroundColor: dark ? DColors.dark : DColors.light,
            child: Stack(
              children: [
                /// -- Thumbnail Image
                const SizedBox(
                  height: 140,
                  width: 120,
                  child: DRoundedImage(
                    padding: EdgeInsets.only(top: 10),
                      imageUrl: DImages.productImage38, applyImageRadius: true),
                ),

                /// -- Sale Tag
                Positioned(
                  top: 10,
                  child: DRoundedContainer(
                    radius: DSizes.sm,
                    backgroundColor: DColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: DSizes.sm, vertical: DSizes.xs),
                    child: Text('20%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: DColors.black)),
                  ),
                ),

                /// -- Favourite Icon Button
                const Positioned(
                    top: 0,
                    right: 0,
                    child:
                    DCircularIcon(icon: Iconsax.heart, color: Colors.red,height: 40,width: 40,size: DSizes.md * 1.3,)),
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: DSizes.sm, left: DSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DProductTitleText(title: 'Green Nike Half SLeeves Shirt', smallSize: true),
                      SizedBox(height: DSizes.spaceBtwItems / 2),
                      DBrandTitleTextWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      const Flexible(child: DProductPriceText(price: '356.0')),

                      /// Add to Cart Button
                      Container(
                        decoration: const BoxDecoration(
                          color: DColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(DSizes.cardRadiusMd),
                            bottomRight: Radius.circular(DSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: DSizes.iconLg * 1.2,
                          height: DSizes.iconLg * 1.2,
                          child: Center(child: Icon(Iconsax.add_copy, color: DColors.white)),
                        ),
                      )

                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
