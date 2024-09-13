import 'package:flutter/material.dart';

import '../../../utils/constants/helpers/colors.dart';
import '../../../utils/constants/helpers/image_strings.dart';
import '../../../utils/constants/helpers/sizes.dart';

class DSocialButtons extends StatelessWidget {
  const DSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: DColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: DSizes.iconMd,
              width: DSizes.iconMd,
              image: AssetImage(DImages.google),
            ),
          ),
        ),
        const SizedBox(width: DSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(border: Border.all(color: DColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: DSizes.iconMd,
              width: DSizes.iconMd,
              image: AssetImage(DImages.facebook),
            ),
          ),
        )
      ],
    );
  }
}