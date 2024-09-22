import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common/widgets/Custom%20shapes/Containers/rounded_container.dart';
import 'package:untitled/common/widgets/success%20screen/succes_screen.dart';
import 'package:untitled/features/shop/screens/Cart/Widgets/cart_items.dart';
import 'package:untitled/features/shop/screens/Checkout/widgets/billing_address_section.dart';
import 'package:untitled/features/shop/screens/Checkout/widgets/billing_amount_section.dart';
import 'package:untitled/features/shop/screens/Checkout/widgets/billing_payment_section.dart';
import 'package:untitled/navigation_menu.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

import '../../../../common/widgets/Appbar/appbar.dart';
import '../../../../common/widgets/Products/Cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: DAppBar(
          showBackArrow: true,
          title:
              Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in Cart
              const DCartItems(showAddRemoveButton: false),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// -- Coupon TextField
              const DCouponCode(),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// -- Billing Section
              DRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(DSizes.md),
                backgroundColor: dark ? DColors.black : DColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    DBillingAmountSection(),
                    SizedBox(height: DSizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: DSizes.spaceBtwItems),

                    /// Payment Method
                    DBillingPaymentSection(),
                    SizedBox(height: DSizes.spaceBtwItems),

                    /// Address
                    DBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// Checkout Buttons
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  SuccessScreen(
                    image: DImages.successfulPaymentICon,
                    title: 'Payment Success!',
                    subTitle: 'Your item will be shipped shortly!',
                    onPressed: () => Get.offAll(const NavigationMenu()),
                  ),
                ),
            child: const Text('Checkout \$356.0')),
      ),
    );
  }
}
