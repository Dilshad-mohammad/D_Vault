import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/common/widgets/Custom%20shapes/Containers/rounded_container.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

class DSingleAddress extends StatelessWidget {
  const DSingleAddress({super.key,
    required this.selectedAddress});

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return DRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(DSizes.md),
      backgroundColor: selectedAddress ? DColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : DColors.grey,
      margin: const EdgeInsets.all(DSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 30,
            child: Icon(selectedAddress ? Iconsax.tick_circle_copy : null,
              color: selectedAddress ? dark ? DColors.light : DColors.dark.withOpacity(0.2) : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gita vatike, shahpur, Gorakhpur, 273006, INDIA',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: DSizes.sm / 2),
              const Text('+91-35443-56452', maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: DSizes.sm / 2),
              const Text('Gita vatike, shahpur, Gorakhpur, 273006, INDIA', softWrap: true),
            ],
          )
        ],
      ),
    );
  }
}
