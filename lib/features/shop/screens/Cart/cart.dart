import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/features/shop/screens/Cart/Widgets/cart_items.dart';
import 'package:untitled/features/shop/screens/Checkout/Checkout.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
          showBackArrow: true,
          title:
              Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(DSizes.defaultSpace),

        /// -- Items in Cart
        child: DCartItems(),
      ),

      /// Checkout Buttons
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(const CheckoutScreen()),
            child: const Text('Checkout \$356.0')),
      ),
    );
  }
}
