import 'package:flutter/material.dart';
import 'package:untitled/features/authentication/controllers/Onboarding/onboarding_controllers.dart';

import '../../../../../utils/constants/helpers/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: DDeviceUtils.getAppBarHeight(),
        right: DSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text('Skip'),
        ));
  }
}
