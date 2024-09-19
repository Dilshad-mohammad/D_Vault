import 'package:flutter/material.dart';
import '../../../utils/constants/helpers/colors.dart';
import '../../../utils/constants/helpers/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class DVerticalImageText extends StatelessWidget {
  const DVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = DColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
            right: DSizes.spaceBtwItems),
        child: Column(
          children: [
            /// Circular Icon
            Container(
              width: 58,
              height: 58,
              padding: const EdgeInsets.all(DSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (DHelperFunctions.isDarkMode(context) ? DColors.black : DColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                    image: AssetImage(image), fit: BoxFit.cover, color: DHelperFunctions.isDarkMode(context) ? DColors.light : DColors.dark), /// remove constant when image added (if needed)
              ),
            ),

            /// Text
            const SizedBox(
                height: DSizes.spaceBtwItems / 2),
            SizedBox(
              width: 60,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}