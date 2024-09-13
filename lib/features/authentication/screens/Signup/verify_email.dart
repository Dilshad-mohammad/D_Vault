import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common/widgets/success%20screen/succes_screen.dart';
import 'package:untitled/features/authentication/screens/Login/login.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/constants/helpers/text_strings.dart';
import '../../../../utils/helpers/helper_function.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const LoginScreen()),
              icon: Icon(CupertinoIcons.clear,
                  color: dark ? DColors.white : DColors.black)),
        ],
      ),
      body: SingleChildScrollView(
        // padding to give default and equal Space on all sides in all screens.
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                  image: const AssetImage(DImages.deliveredEmailIllustration),
                  width: DHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// Title & SubTitle
              Text(DTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: DSizes.spaceBtwItems),
              Text('support@dvault.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: DSizes.spaceBtwItems),
              Text(DTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(SuccessScreen(
                            image: DImages.staticSuccessIllustration,
                            title: DTexts.yourAccountCreatedTitle,
                            subTitle: DTexts.yourAccountCreatedSubTitle,
                            onPressed: () => Get.to(const LoginScreen()),
                          ),),
                      child: const Text(DTexts.dContinue))),
              const SizedBox(height: DSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text(DTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
