import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/authentication/screens/onboarding/onboarding.dart';
import 'utils/theme/theme.dart';


class D_vault extends StatelessWidget{
  const D_vault({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: D_vaultTheme.lightTheme,
      darkTheme: D_vaultTheme.darkTheme,
      home: const OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
