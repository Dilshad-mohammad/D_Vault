import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/common/styles/shadow.dart';
import 'package:untitled/common/widgets/Images/drounded_image.dart';
import 'package:untitled/common/widgets/texts/product_title_text.dart';
import 'package:untitled/features/shop/screens/Product%20details/product_details.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';
import '../../Custom shapes/Containers/rounded_container.dart';
import '../../Icons/dcircular_icons.dart';
import '../../texts/d_brand_title_text_verified.dart';
import '../../texts/product_price_text.dart';

class DProductCardVertical extends StatelessWidget {
  const DProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () => Get.to(const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [DShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(DSizes.productImageRadius),
          color: dark ? DColors.darkerGrey : DColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag
            DRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(DSizes.sm),
              backgroundColor: dark ? DColors.dark : DColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  const DRoundedImage(
                      imageUrl: DImages.productImage38, applyImageRadius: true,
                      padding: EdgeInsets.only(top: 16)),
      
                  /// -- Sale Tag
                  Positioned(
                    top: 12,
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
                          DCircularIcon(icon: Iconsax.heart, color: Colors.red)),
                ],
              ),
            ),
            const SizedBox(height: DSizes.spaceBtwItems / 2),
      
            /// -- Detials
            const Padding(
              padding: EdgeInsets.only(left: DSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DProductTitleText(title: 'Green Nike Air Shoes', smallSize: true),
                  SizedBox(height: DSizes.spaceBtwItems /2),
                  DBrandTitleTextWithVerifiedIcon(title: 'Nike'),
      
                ],
              ),
            ),

            // Todo: Spacer() here to keep the height od each box same in case 1 or 2 lines of Headings
            const Spacer(),

            /// Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: DSizes.sm),
                  child: DProductPriceText(price: '45.0',isLarge: true),
                ),

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
    );
  }
}
