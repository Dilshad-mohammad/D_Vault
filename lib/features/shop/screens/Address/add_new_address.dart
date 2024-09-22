import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(showBackArrow: true, title: Text('Add new Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user_copy), labelText: 'Name')),
                const SizedBox(height: DSizes.spaceBtwInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile_copy), labelText: 'Phone Number')),
                const SizedBox(height: DSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_copy), labelText: 'Street'))),
                    const SizedBox(width: DSizes.spaceBtwInputFields),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code_1_copy), labelText: 'Postal Code'))),
                  ],
                ),
                const SizedBox(height: DSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.home_copy), labelText: 'Street'))),
                    const SizedBox(width: DSizes.spaceBtwInputFields),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity_copy), labelText: 'Postal Code'))),
                  ],
                ),
                const SizedBox(height: DSizes.spaceBtwInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global_copy), labelText: 'Country')),
                const SizedBox(height: DSizes.defaultSpace * 2),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Save')),)


              ],
            ),
          ),
        ),
      ),
    );
  }
}
