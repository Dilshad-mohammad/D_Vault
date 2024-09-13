import 'package:flutter/material.dart';

import '../../../../../utils/constants/helpers/image_strings.dart';
import '../../../../../utils/constants/helpers/sizes.dart';
import '../../../../../utils/constants/helpers/text_strings.dart';
import '../../../../../utils/helpers/helper_function.dart';

class DLoginHeader extends StatelessWidget {
  const DLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? DImages.lightAppLogo : DImages.darkAppLogo),
        ),
        Text(DTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: DSizes.sm),
        Text(DTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
