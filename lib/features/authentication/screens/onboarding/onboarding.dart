import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/authentication/controllers/Onboarding/onboarding_controllers.dart';
import 'package:untitled/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:untitled/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:untitled/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:untitled/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  title: DTexts.onBoardingTitle1,
                  subtitle: DTexts.onBoardingSubTitle1,
                  image: DImages.onBoardingImage1),
              OnBoardingPage(
                  title: DTexts.onBoardingTitle2,
                  subtitle: DTexts.onBoardingSubTitle2,
                  image: DImages.onBoardingImage2),
              OnBoardingPage(
                  title: DTexts.onBoardingTitle3,
                  subtitle: DTexts.onBoardingSubTitle3,
                  image: DImages.onBoardingImage3),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}