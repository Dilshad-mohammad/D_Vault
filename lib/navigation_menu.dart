import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/features/shop/screens/Wishlist/wishlist.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/helpers/helper_function.dart';
import 'features/personalization/Screens/Settings/settings.dart';
import 'features/shop/screens/Home/home.dart';
import 'features/shop/screens/Store/store.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
          () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? DColors.black : Colors.white,
          indicatorColor: darkMode ? DColors.white.withOpacity(0.1) : DColors.black.withOpacity(0.1),

            destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), const StoreScreen(), const WishlistScreen(), const SettingScreen()];
}
