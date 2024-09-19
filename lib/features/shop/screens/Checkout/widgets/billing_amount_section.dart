
import 'package:flutter/material.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

class DBillingAmountSection extends StatelessWidget {
  const DBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$356.0',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: DSizes.spaceBtwItems / 2),

        /// Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: DSizes.spaceBtwItems / 2),

        /// Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: DSizes.spaceBtwItems / 2),

        /// Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0',style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        SizedBox(height: DSizes.spaceBtwItems / 2),
      ],
    );
  }
}
