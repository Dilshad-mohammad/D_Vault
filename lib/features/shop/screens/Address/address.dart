import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/features/shop/screens/Address/add_new_address.dart';
import 'package:untitled/features/shop/screens/Address/widgets/single_address.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(const AddNewAddressScreen()),
        backgroundColor: DColors.primary,
        child: const Icon(Iconsax.add_copy, color: DColors.white),
      ),
      appBar: DAppBar(
        showBackArrow: true,
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          children: [
            DSingleAddress(selectedAddress: true),
            DSingleAddress(selectedAddress: false),
            DSingleAddress(selectedAddress: false),
          ],
        ),
        ),
      ),
    );
  }
}
