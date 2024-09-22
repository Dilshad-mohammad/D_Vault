import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/Images/dcircular_image.dart';
import 'package:untitled/common/widgets/texts/d_brand_title_text_verified.dart';
import 'package:untitled/common/widgets/texts/product_price_text.dart';
import 'package:untitled/common/widgets/texts/product_title_text.dart';
import 'package:untitled/utils/constants/helpers/enums.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';

import '../../../../../common/widgets/Custom shapes/Containers/rounded_container.dart';
import '../../../../../utils/constants/helpers/colors.dart';
import '../../../../../utils/constants/helpers/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class DProductMetaData extends StatelessWidget {
  const DProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            DRoundedContainer(
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
            const SizedBox(width: DSizes.spaceBtwItems),

            /// Price
            Text('\$350', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: DSizes.spaceBtwItems),
            const DProductPriceText(price: '230', isLarge: true),
          ],
        ),
        const SizedBox(height: DSizes.spaceBtwItems / 1.5),

        /// Title
        const DProductTitleText(title: 'Brown Nike Sporty Leather Jacket'),
        const SizedBox(height: DSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const DProductTitleText(title: 'Status'),
            const SizedBox(width: DSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(width: DSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            DCircularImage(image: DImages.shoeIcon,
            width: 35,
              height: 35,
              overlayColor: dark ? DColors.white : DColors.dark,
            ),
            const DBrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        ),
        const SizedBox(width: DSizes.spaceBtwItems),
      ],
    );
  }
}
