import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/common/widgets/Custom%20shapes/Containers/rounded_container.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

import '../../../../../utils/helpers/helper_function.dart';

class DOrderListItems extends StatelessWidget {
  const DOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(height: DSizes.spaceBtwItems),
      itemCount: 10,
      itemBuilder: (_, index) => DRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(DSizes.md / 1.2),
        backgroundColor: dark ? DColors.dark : DColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// -- Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// 1 - Icon
                const Icon(Iconsax.timer_1_copy),
                const SizedBox(width: DSizes.spaceBtwItems / 2),
      
                /// 2 - Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',
                      style: Theme.of(context).textTheme.bodyLarge!.apply(color: DColors.primary, fontWeightDelta: 1),
                      ),
                      Text('01 Sept 2024', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
      
                /// 3 - Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_3_copy, size: DSizes.sm * 1.5)),
              ],
            ),
            const SizedBox(height: DSizes.spaceBtwItems),
      
            /// -- Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// 1 - Icon
                      const Icon(Iconsax.tag_copy),
                      const SizedBox(width: DSizes.spaceBtwItems / 2),
                  
                      /// 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('#356F2', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// 1 - Icon
                      const Icon(Iconsax.calendar_copy),
                      const SizedBox(width: DSizes.spaceBtwItems / 2),
                  
                      /// 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('04 Sept 2024', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
