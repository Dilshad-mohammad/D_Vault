import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/features/authentication/controllers/Onboarding/onboarding_controllers.dart';

import '../../../../../utils/constants/helpers/colors.dart';
import '../../../../../utils/constants/helpers/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = DHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: DDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: DSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? DColors.light : DColors.dark, dotHeight: 5),
      ),
    );
  }
}
