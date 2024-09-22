import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/Custom%20shapes/Containers/rounded_container.dart';
import 'package:untitled/common/widgets/texts/section_heading.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

class DBillingPaymentSection extends StatelessWidget {
  const DBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        DSectionHeading(title: 'Paypal Method', buttonTitle: 'Change', onPressed: (){}),
        const SizedBox(height: DSizes.spaceBtwItems / 2),
        Row(
          children: [
            DRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? DColors.light : DColors.softgrey,
              padding: const EdgeInsets.all(DSizes.sm),
              child: const Image(image: AssetImage(DImages.payPal), fit: BoxFit.contain),
            ),
            const SizedBox(width: DSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
