import 'package:flutter/material.dart';
import '../../../utils/constants/helpers/colors.dart';
import '../../../utils/constants/helpers/enums.dart';
import '../../../utils/constants/helpers/image_strings.dart';
import '../../../utils/constants/helpers/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../Custom shapes/Containers/rounded_container.dart';
import '../Images/dcircular_image.dart';
import '../texts/d_brand_title_text_verified.dart';

class DBrandCard extends StatelessWidget {
  const DBrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      /// Container Design
      child: DRoundedContainer(
        padding: const EdgeInsets.all(DSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// -- Icon
            Flexible(
              child: DCircularImage(image: DImages.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? DColors.white : DColors.black,
              ),
            ),
            const SizedBox(height: DSizes.spaceBtwItems /2),

            /// -- Texts
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DBrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large),
                  Text(
                    '275 Products ',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}