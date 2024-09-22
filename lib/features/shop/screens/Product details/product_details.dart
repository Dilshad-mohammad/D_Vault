import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:untitled/common/widgets/texts/section_heading.dart';
import 'package:untitled/features/shop/screens/Product%20Reviews/product_reviews.dart';
import 'package:untitled/features/shop/screens/Product%20details/widgets/bottom_add_to_cart.dart';
import 'package:untitled/features/shop/screens/Product%20details/widgets/product_attributes.dart';
import 'package:untitled/features/shop/screens/Product%20details/widgets/product_detail_image_slider.dart';
import 'package:untitled/features/shop/screens/Product%20details/widgets/product_metadata.dart';
import 'package:untitled/features/shop/screens/Product%20details/widgets/rating_share_widget.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const DBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            const DProductImageSlider(),

            /// 2 - Product Details
            Padding(padding: const EdgeInsets.only(right: DSizes.defaultSpace, left: DSizes.defaultSpace, bottom: DSizes.defaultSpace),
            child: Column(
              children: [
                /// - Rating & Share
                const DRatingAndShare(),


                /// - Price, Title, Stock & Brand
                const DProductMetaData(),
                const SizedBox(height: DSizes.spaceBtwItems / 2.5),

                /// -- Attributes
                const DProductAttributes(),
                const SizedBox(height: DSizes.spaceBtwSections),

                /// -- Checkout Button
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                const SizedBox(height: DSizes.spaceBtwSections),

                /// -- Description
                const DSectionHeading(title: 'Description', showActionButton: false),
                const SizedBox(height: DSizes.spaceBtwItems),
                const ReadMoreText(
                  'This is Product description for blue Nke Sleeve less vest. There are more things that can be added but i am dshfdscsdvb',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Show more',
                  trimExpandedText: 'Less',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),

                /// -- Reviews
                const Divider(),
                const SizedBox(height: DSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const DSectionHeading(title: 'Review (199)', showActionButton: false),
                    IconButton(onPressed: () => Get.to(const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3_copy, size: 18))
                  ],
                ),
                const SizedBox(height: DSizes.spaceBtwSections),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}


