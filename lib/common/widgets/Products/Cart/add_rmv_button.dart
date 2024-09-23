import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/helpers/colors.dart';
import '../../../../utils/constants/helpers/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../Icons/dcircular_icons.dart';

class DProductQtyAddRemoveButton extends StatelessWidget {
  const DProductQtyAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DCircularIcon(
          icon: Iconsax.minus_copy,
          width: 32,
          height: 32,
          size: DSizes.md,
          color: dark ? Colors.white : DColors.black,
          backgroundColor : dark ? DColors.darkGrey : DColors.softgrey,
        ),
        const SizedBox( width: DSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox( width: DSizes.spaceBtwItems),

        DCircularIcon(
          icon: Iconsax.add_copy,
          width: 32,
          height: 32,
          size: DSizes.md,
          color: dark ? DColors.white : DColors.black,
          backgroundColor : DColors.primary,
        ),
      ],
    );
  }
}