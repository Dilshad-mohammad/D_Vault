import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/common/widgets/Icons/dcircular_icons.dart';
import 'package:untitled/common/widgets/Layout/grid_layout.dart';
import 'package:untitled/common/widgets/Products/Product%20Cards/product_card_vertical.dart';
import 'package:untitled/features/shop/screens/Home/home.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          DCircularIcon(icon: Iconsax.add_copy, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
       body: SingleChildScrollView(
         child: Padding(padding: const EdgeInsets.all(DSizes.defaultSpace),
         child: Column(
           children: [
             DGridLayout(itemCount: 4,
                 itemBuilder: (_, index) => const DProductCardVertical()),
           ],
         ),
         ),
       ),
    );
  }
}
