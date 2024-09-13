import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/features/authentication/screens/Signup/signup.dart';
import 'package:untitled/features/authentication/screens/password%20configuration/forgot_password.dart';
import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/helpers/sizes.dart';
import '../../../../../utils/constants/helpers/text_strings.dart';

class DLoginForm extends StatelessWidget {
  const DLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: DSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right_copy),
                  labelText: DTexts.email),
            ),
            const SizedBox(height: DSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check_copy),
                labelText: DTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash_copy),
              ),
            ),
            const SizedBox(height: DSizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(DTexts.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                    onPressed: () => Get.to(const ForgotPassword()),
                    child: const Text(DTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: DSizes.spaceBtwSections),

            /// Sign in Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(const NavigationMenu()),
                    child: const Text(DTexts.signIn))),
            const SizedBox(height: DSizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(const SignupScreen()),
                    child: const Text(DTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
