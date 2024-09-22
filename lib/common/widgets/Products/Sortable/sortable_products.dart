import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../utils/constants/helpers/sizes.dart';
import '../../Layout/grid_layout.dart';
import '../Product Cards/product_card_vertical.dart';

class DSortableProducts extends StatelessWidget {
  const DSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort_copy)),
          onChanged: (value) {},
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity']
              .map((option) => DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: DSizes.spaceBtwSections),
        ///Products
        DGridLayout(itemCount: 8,
            itemBuilder: (_, index) => const DProductCardVertical())

      ],
    );
  }
}