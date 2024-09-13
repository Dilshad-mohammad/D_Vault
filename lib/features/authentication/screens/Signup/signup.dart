import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common/widgets/Login_Signup/form_divider.dart';
import 'package:untitled/common/widgets/Login_Signup/social_buttons.dart';
import 'package:untitled/features/authentication/screens/Signup/widgets/signup_form.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/constants/helpers/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(DTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// Form
              const DSignupForm(),
              const SizedBox(height: DSizes.spaceBtwSections / 1.3),

              /// Divider
              DFormDivider(dividerText: DTexts.orSignUpWith.capitalize!),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// Social Buttons
              const DSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}