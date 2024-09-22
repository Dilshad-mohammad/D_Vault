import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../common/widgets/Appbar/appbar.dart';
import '../../../../../common/widgets/Custom shapes/Curved Edges/curved_edges_widget.dart';
import '../../../../../common/widgets/Icons/dcircular_icons.dart';
import '../../../../../common/widgets/Images/drounded_image.dart';
import '../../../../../utils/constants/helpers/colors.dart';
import '../../../../../utils/constants/helpers/image_strings.dart';
import '../../../../../utils/constants/helpers/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class DProductImageSlider extends StatelessWidget {
  const DProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return DCurvedEdgesWidget(
      child: Container(
        color: dark ? DColors.darkerGrey : DColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(DSizes.productImageRadius * 2),
                child: Center(child: Image(image: AssetImage(DImages.productImage36))),
              ),
            ),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: DSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: DSizes.spaceBtwItems),
                  itemBuilder: (_, index) => DRoundedImage(
                      width: 80,
                      backgroundColor: dark ? DColors.dark : DColors.white,
                      border: Border.all(color: DColors.primary),
                      padding: const EdgeInsets.all(DSizes.sm),
                      imageUrl: DImages.productImage39),
                ),
              ),
            ),

            /// Appbar Icons
            const DAppBar(
              showBackArrow: true,
              actions: [
                DCircularIcon(icon: Iconsax.heart, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}