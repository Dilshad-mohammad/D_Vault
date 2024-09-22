import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/common/widgets/Images/drounded_image.dart';
import 'package:untitled/common/widgets/Products/Product%20Cards/product_card_horizontal.dart';
import 'package:untitled/common/widgets/texts/section_heading.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          children: [
            /// Banner
            const DRoundedImage(width: double.infinity, imageUrl: DImages.promoBanner4, applyImageRadius: true),
            const SizedBox(height: DSizes.spaceBtwSections),

            /// Sub-Categories
            Column(
              children: [
                /// Heading
                DSectionHeading(title: 'Sports Shirts', onPressed: (){}),
                const SizedBox(height: DSizes.spaceBtwItems / 2),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: DSizes.spaceBtwItems),
                      itemBuilder: (context, index) => const DProductCardHorizontal()),
                ),
              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}
