import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/helpers/sizes.dart';

class DBillingAddressSection extends StatelessWidget {
  const DBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}),
        Text('Dilshad Mohammad', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: DSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: DSizes.spaceBtwItems),
            Text('+91-07597-87356', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: DSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: DSizes.spaceBtwItems),
            Text('Shahpur, Gita Vatika, Gorakhpur, 273006, INDIA', style: Theme.of(context).textTheme.bodyMedium, softWrap: true)
          ],
        ),
      ],
    );
  }
}
