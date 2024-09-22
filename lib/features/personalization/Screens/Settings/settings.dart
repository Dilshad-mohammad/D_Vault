import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/common/widgets/Custom%20shapes/Containers/primary_header_container.dart';
import 'package:untitled/common/widgets/List%20files/settings_menu_tile.dart';
import 'package:untitled/common/widgets/texts/section_heading.dart';
import 'package:untitled/features/shop/screens/Address/address.dart';
import 'package:untitled/features/shop/screens/Order/Order.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import '../../../../common/widgets/List files/user_profile_tile.dart';
import '../../../../utils/constants/helpers/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --Header
            DPrimaryHeaderContainer(
                child: Column(
              children: [
                /// AppBar
                DAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: DColors.white))),
                const SizedBox(height: DSizes.spaceBtwSections),

                /// User Profile Card
                const DUserProfileTile(),
                const SizedBox(height: DSizes.spaceBtwSections),
              ],
            ),
            ),
            /// --Body
            Padding(padding: const EdgeInsets.all(DSizes.defaultSpace),
            child: Column(
              children: [
                /// -- Account Setting
                const DSectionHeading(title: 'Account Settings', showActionButton: false),
                const SizedBox(height: DSizes.spaceBtwItems),

                DSettingsMenuTile(icon: Iconsax.safe_home_copy, title: 'My Addresses', subTitle: 'Set shopping delivery address', onTap: () => Get.to(const UserAddressScreen())),
                DSettingsMenuTile(icon: Iconsax.shopping_cart_copy, title: 'My Cart', subTitle: 'Add, remove products and move to checkout', onTap: (){}),
                DSettingsMenuTile(icon: Iconsax.bag_tick_copy, title: 'My Orders', subTitle: 'In-progress and Completed Orders', onTap: () => Get.to(const OrderScreen())),
                DSettingsMenuTile(icon: Iconsax.bank_copy, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account', onTap: (){}),
                DSettingsMenuTile(icon: Iconsax.discount_shape_copy, title: 'My Coupons', subTitle: 'List of all the discounted coupons', onTap: (){}),
                DSettingsMenuTile(icon: Iconsax.notification_copy, title: 'Notifications', subTitle: 'Set any kind of notification message', onTap: (){}),
                DSettingsMenuTile(icon: Iconsax.security_card_copy, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts', onTap: (){}),

                /// -- App Setting
                const SizedBox(height: DSizes.spaceBtwSections),
                const DSectionHeading(title: 'App Setting', showActionButton: false),
                const SizedBox(height: DSizes.spaceBtwSections),
                DSettingsMenuTile(icon: Iconsax.safe_home_copy, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase', onTap: (){}),
                DSettingsMenuTile(
                    icon: Iconsax.location_copy,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value){}),
                ),
                DSettingsMenuTile(
                  icon: Iconsax.security_user_copy,
                  title: 'Safe Mode',
                  subTitle: 'Search result is safe for all ages',
                  trailing: Switch(value: true, onChanged: (value){}),
                ),
                DSettingsMenuTile(
                  icon: Iconsax.image,
                  title: 'HD Image Quality',
                  subTitle: 'Set Image quality to be seen',
                  trailing: Switch(value: true, onChanged: (value){}),
                ),
                
                /// -- Logout Button
                const SizedBox(height: DSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: () {}, child: const Text('Logout')),
                ),
                const SizedBox(height: DSizes.spaceBtwSections * 2.5),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
