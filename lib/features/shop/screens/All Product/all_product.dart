import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import '../../../../common/widgets/Products/Sortable/sortable_products.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:
          DAppBar(title: Text('Popular Product'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(DSizes.defaultSpace),
          child: DSortableProducts(),
        ),
      ),
    );
  }
}
