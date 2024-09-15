import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/helpers/colors.dart';

class DCartCounterIcon extends StatelessWidget {
  const DCartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(Iconsax.shopping_bag_copy,
                color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: DColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',
                  style: Theme.of(context).textTheme.labelLarge!
                      .apply(color: DColors.white, fontSizeFactor: 0.9)),
            ),
          ),
        ),
      ],
    );
  }
}
