import 'package:flutter/material.dart';
import '../../../utils/constants/helpers/colors.dart';
import '../../../utils/constants/helpers/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../Custom shapes/Containers/rounded_container.dart';
import 'brand_cards.dart';

class DBrandShowCase extends StatelessWidget {
  const DBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return DRoundedContainer(
      showBorder: true,
      backgroundColor: DColors.darkGrey,
      borderColor: Colors.transparent,
      padding: const EdgeInsets.all(DSizes.md),
      margin: const EdgeInsets.only(bottom: DSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Product Count
          const DBrandCard(showBorder: false),
          const SizedBox(height: DSizes.spaceBtwItems),

          /// BRand top 3 Product images
          Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList()),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: DRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(DSizes.md),
        margin: const EdgeInsets.only(right: DSizes.sm),
        backgroundColor: DHelperFunctions.isDarkMode(context)
            ? DColors.darkerGrey
            : DColors.light,
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}