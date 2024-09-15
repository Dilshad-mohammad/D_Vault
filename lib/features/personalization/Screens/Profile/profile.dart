import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/common/widgets/Images/dcircular_image.dart';
import 'package:untitled/common/widgets/texts/section_heading.dart';
import 'package:untitled/features/personalization/Screens/Profile/widgets/profile_menu.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(
        showBackArrow: true, title: Text('Profile')),
      /// -- Body
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          children: [
            /// Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const DCircularImage(image: DImages.user, width: 80, height: 80),
                  TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                ],
              ),
            ),

            /// Detailed
            const SizedBox(height: DSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: DSizes.spaceBtwItems),

            /// Heading Profile Info
            const DSectionHeading(title: 'Profile Information', showActionButton: false),
            const SizedBox(height: DSizes.spaceBtwItems),

            DProfileMenu(onPressed: (){},title: 'Name',value: 'Dilshad Mohammad'),
            DProfileMenu(onPressed: (){},title: 'Username',value: 'Dilshad.mohammad_'),

            const SizedBox(height: DSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: DSizes.spaceBtwItems),

            /// Heading Personal Info
            const DSectionHeading(title: 'Personal Information', showActionButton: false),
            const SizedBox(height: DSizes.spaceBtwItems),

            DProfileMenu(onPressed: (){},title: 'User ID',value: '35736'),
            DProfileMenu(onPressed: (){},title: 'E-mail',value: 'example123@gmail.com'),
            DProfileMenu(onPressed: (){},title: 'Phone Number',value: '+91-93758-19473'),
            DProfileMenu(onPressed: (){},title: 'Gender',value: 'Male'),
            DProfileMenu(onPressed: (){},title: 'Date of Birth',value: '09 Feb 2003'),

          ],
        ),
        ),
      ),
    );
  }
}


