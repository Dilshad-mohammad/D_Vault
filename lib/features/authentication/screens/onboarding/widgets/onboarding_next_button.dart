import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/features/authentication/controllers/Onboarding/onboarding_controllers.dart';

import '../../../../../utils/constants/helpers/colors.dart';
import '../../../../../utils/constants/helpers/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Positioned(
      right: DSizes.defaultSpace,
      bottom: DDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? DColors.primary : Colors.black),
        child: const Icon(Iconsax.arrow_right_3_copy, size: DSizes.iconSm),
      ),
    );
  }
}
