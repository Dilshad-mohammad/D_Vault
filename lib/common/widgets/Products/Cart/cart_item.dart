import 'package:flutter/material.dart';

import '../../../../utils/constants/helpers/colors.dart';
import '../../../../utils/constants/helpers/image_strings.dart';
import '../../../../utils/constants/helpers/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../Images/drounded_image.dart';
import '../../texts/d_brand_title_text_verified.dart';
import '../../texts/product_title_text.dart';

class DCartItem extends StatelessWidget {
  const DCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// Image
        DRoundedImage(
          imageUrl: DImages.productImage10,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(DSizes.sm),
          backgroundColor: dark
              ? DColors.darkerGrey
              : DColors.light,
        ),
        const SizedBox(width: DSizes.spaceBtwItems),

        /// Title, Price & Size
        Expanded(child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DBrandTitleTextWithVerifiedIcon(title: 'Nike'),
            const Flexible(child: DProductTitleText(title: 'Black Sports shoes', maxLines: 1)),
            /// Attribute
            Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'Red ', style: Theme.of(context).textTheme.bodyLarge),
                      TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'UK 08 ', style: Theme.of(context).textTheme.bodyLarge),
                    ]
                )
            )
          ],
        ))
      ],
    );
  }
}