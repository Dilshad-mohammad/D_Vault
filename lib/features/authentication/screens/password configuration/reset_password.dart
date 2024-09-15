import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/text_strings.dart';

import '../../../../utils/constants/helpers/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        // padding to give default and equal Space on all sides in all screens.
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// Image with 60% of screen width
              Image(
                  image: const AssetImage(DImages.deliveredEmailIllustration),
                  width: DHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// Title & SubTitle
              Text(DTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: DSizes.spaceBtwItems),
              Text(DTexts.changeYourPasswordSupTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: const Text(DTexts.dDone)),
              ),
              const SizedBox(height: DSizes.spaceBtwItems * 1.3),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: (){},
                    child: const Text(DTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
