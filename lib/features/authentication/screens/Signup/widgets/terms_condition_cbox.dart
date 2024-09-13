import 'package:flutter/material.dart';
import '../../../../../utils/constants/helpers/colors.dart';
import '../../../../../utils/constants/helpers/sizes.dart';
import '../../../../../utils/constants/helpers/text_strings.dart';
import '../../../../../utils/helpers/helper_function.dart';

class DTermsConditions extends StatelessWidget {
  const DTermsConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Row(
        children: [
          SizedBox(
              width: 24,
              child: Checkbox(value: true, onChanged: (value) {})),
          const SizedBox(width: DSizes.spaceBtwItems),
          Text.rich(TextSpan(children: [
            TextSpan(
                text: '${DTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: DTexts.privacyPolicy,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(
                  color: dark ? DColors.white : DColors.primary,
                  decorationColor:
                  dark ? DColors.white : DColors.primary,
                )),
            TextSpan(
                text: ' ${DTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: DTexts.terms0fUse,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(
                  color: dark ? DColors.white : DColors.primary,
                  decorationColor:
                  dark ? DColors.white : DColors.primary,
                )),
          ]),
          ),
        ]
    );
  }
}
