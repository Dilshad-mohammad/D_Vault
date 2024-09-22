import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/common/widgets/Brands/brand_cards.dart';
import 'package:untitled/common/widgets/Products/Sortable/sortable_products.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DAppBar(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          children: [
            /// Brand Detail
            DBrandCard(showBorder: true),
            SizedBox(height: DSizes.spaceBtwSections),

            DSortableProducts(),
          ],
        ),
        ),
      ),
    );
  }
}
