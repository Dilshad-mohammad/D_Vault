import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/features/authentication/screens/password%20configuration/reset_password.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/constants/helpers/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Heading
            Text(DTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: DSizes.spaceBtwItems),
            Text(DTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: DSizes.spaceBtwSections * 2),

            /// Text field
            TextFormField(
              decoration: const InputDecoration(labelText: DTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: DSizes.spaceBtwSections),

            /// Submit button
            SizedBox(width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.off(const ResetPassword()),child: const Text(DTexts.dSubmit)),
            )
          ],
        ),
      ),
    );
  }
}
