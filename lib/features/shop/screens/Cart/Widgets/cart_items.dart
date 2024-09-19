import 'package:flutter/material.dart';

import '../../../../../common/widgets/Products/Cart/add_rmv_button.dart';
import '../../../../../common/widgets/Products/Cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/helpers/sizes.dart';

class DCartItems extends StatelessWidget {
  const DCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, __) => const SizedBox(height: DSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          /// Cart Item
          const DCartItem(),
          if(showAddRemoveButton) const SizedBox(height: DSizes.spaceBtwItems),

          /// Add Remove Buttons with total price
          if(showAddRemoveButton)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),

                  /// Add Remove Buttons
                  DProductQtyAddRemoveButton(),
                ],
              ),
              ///Product total price
              DProductPriceText(price: '356'),
            ],
          ),
        ],
      ),
    );
  }
}
