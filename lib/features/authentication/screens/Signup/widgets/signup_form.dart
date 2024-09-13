import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/features/authentication/screens/Signup/verify_email.dart';
import 'package:untitled/features/authentication/screens/Signup/widgets/terms_condition_cbox.dart';

import '../../../../../utils/constants/helpers/colors.dart';
import '../../../../../utils/constants/helpers/sizes.dart';
import '../../../../../utils/constants/helpers/text_strings.dart';
import '../../../../../utils/helpers/helper_function.dart';

class DSignupForm extends StatelessWidget {
  const DSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: DTexts.firstName,
                      prefixIcon: Icon(Iconsax.user_copy)),
                ),
              ),
              const SizedBox(width: DSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: DTexts.firstName,
                      prefixIcon: Icon(Iconsax.user_copy)),
                ),
              ),
            ],
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: DTexts.username,
                prefixIcon: Icon(Iconsax.user_edit_copy)),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: DTexts.email,
                prefixIcon: Icon(Iconsax.direct_copy)),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          /// Phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: DTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call_copy)),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: DTexts.password,
                prefixIcon: Icon(Iconsax.password_check_copy),
                suffixIcon: Icon(Iconsax.eye_slash_copy)),
          ),
          const SizedBox(height: DSizes.spaceBtwSections),

          /// Terms&Conditions Checkbox
          const DTermsConditions(),

          /// Sign up button
          const SizedBox(height: DSizes.spaceBtwSections / 1.2),
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(const VerifyEmailScreen()), child: const Text(DTexts.createAccount))),
        ],
      ),
    );
  }
}