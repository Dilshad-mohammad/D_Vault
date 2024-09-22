import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/Products/Cart/add_rmv_button.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

class DBottomAddToCart extends StatelessWidget {
  const DBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: DSizes.defaultSpace, vertical: DSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? DColors.darkerGrey : DColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(DSizes.cardRadiusLg),
            topRight: Radius.circular(DSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const DProductQtyAddRemoveButton(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(DSizes.md),
                backgroundColor: DColors.black,
                side: const BorderSide(color: DColors.black),
              ),
              onPressed: (){}, child: const Text('Add to Cart')),
        ],
      ),
    );
  }
}
