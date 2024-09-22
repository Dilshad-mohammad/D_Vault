import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/Custom%20shapes/Containers/rounded_container.dart';
import 'package:untitled/common/widgets/texts/product_price_text.dart';
import 'package:untitled/common/widgets/texts/product_title_text.dart';
import 'package:untitled/common/widgets/texts/section_heading.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

import '../../../../../common/widgets/Chips/choice_chip.dart';
import '../../../../../utils/helpers/helper_function.dart';

class DProductAttributes extends StatelessWidget {
  const DProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attributes Pricing & Description
        DRoundedContainer(
          padding: const EdgeInsets.all(DSizes.md),
          backgroundColor: dark ? DColors.darkerGrey : DColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const DSectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: DSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const DProductTitleText(title: 'Price : ', smallSize: true),

                          /// Actual Price
                          Text(
                            '\$45',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: DSizes.spaceBtwItems),

                          /// Sale Price
                          const DProductPriceText(price: '35')
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const DProductTitleText(title: 'Stock : ', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const DProductTitleText(
                title: 'This is the description of the product and it can go upto max 4 lines.',
              smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: DSizes.spaceBtwItems),

        /// -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DSectionHeading(title: 'Colors'),
            const SizedBox(width: DSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                DChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
                DChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                DChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),
        const SizedBox(height: DSizes.spaceBtwItems / 2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DSectionHeading(title: 'Size'),
            const SizedBox(width: DSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                DChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}),
                DChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),
                DChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),
      ],
    );
  }
}

