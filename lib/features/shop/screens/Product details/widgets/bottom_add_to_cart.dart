import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/common/widgets/Icons/dcircular_icons.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

class DBottomAddToCart extends StatelessWidget {
  const DBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: DSizes.defaultSpace, vertical: DSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? DColors.darkerGrey : DColors.light,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(DSizes.cardRadiusLg),
            topRight: Radius.circular(DSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              DCircularIcon(
                icon: Iconsax.minus_copy,
                backgroundColor: DColors.darkerGrey,
                width: 40,
                height: 40,
                color: DColors.white,
              ),
              const SizedBox(width: DSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: DSizes.spaceBtwItems),
              DCircularIcon(
                icon: Iconsax.add_copy,
                backgroundColor: DColors.darkerGrey,
                width: 40,
                height: 40,
                color: DColors.white,
              ),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(DSizes.md),
                backgroundColor: DColors.black,
                side: BorderSide(color: DColors.black),
              ),
              onPressed: (){}, child: const Text('Add to Cart')),
        ],
      ),
    );
  }
}
