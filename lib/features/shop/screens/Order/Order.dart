import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/features/shop/screens/Order/widgets/order_list.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
      appBar: DAppBar(title: Text('My Orders', style: Theme.of(context).textTheme.headlineSmall), showBackArrow: true),
      body: const Padding(padding: EdgeInsets.all(DSizes.defaultSpace),

        /// -- Orders
        child: DOrderListItems(),
      ),
    );
  }
}
