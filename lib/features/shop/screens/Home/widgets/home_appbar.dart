import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/Appbar/appbar.dart';
import '../../../../../common/widgets/Products/Cart/cart_menu_icon.dart';
import '../../../../../utils/constants/helpers/colors.dart';
import '../../../../../utils/constants/helpers/text_strings.dart';
import '../../Cart/cart.dart';

class DHomeAppBar extends StatelessWidget {
  const DHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DAppBar(
      title: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(DTexts.homeAppbarTitle,
              style: Theme.of(context).textTheme.labelMedium!
                  .apply(color: DColors.grey)),
          Text(DTexts.homeAppbarSubTitle,
              style: Theme.of(context).textTheme.headlineSmall!
                  .apply(color: DColors.white)),
        ],
      ),
      actions: [DCartCounterIcon(iconColor: DColors.white, onPressed: () => Get.to(const CartScreen()))],
    );
  }
}