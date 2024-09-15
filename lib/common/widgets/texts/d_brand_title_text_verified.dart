import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/common/widgets/texts/d_brand_title_text.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/enums.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

class DBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const DBrandTitleTextWithVerifiedIcon({
    super.key,
    this.textColor,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.iconColor = DColors.primary,
  });

  final Color? textColor, iconColor;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: DBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: DSizes.xs),
        Icon(Iconsax.verify, color: iconColor, size: DSizes.iconXs),
      ],
    );
  }
}
