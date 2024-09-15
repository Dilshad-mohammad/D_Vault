import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/features/personalization/Screens/Profile/profile.dart';

import '../../../utils/constants/helpers/colors.dart';
import '../../../utils/constants/helpers/image_strings.dart';
import '../Images/dcircular_image.dart';

class DUserProfileTile extends StatelessWidget {
  const DUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const DCircularImage(image: DImages.user, width: 50, height: 50, padding: 0),
      title: Text('Dilshad mohammad', style: Theme.of(context).textTheme.headlineSmall!.apply(color: DColors.white)),
      subtitle: Text('support@dvault.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: DColors.white)),
      trailing: IconButton(onPressed: ()=> Get.to(const ProfileScreen()), icon: const Icon(Iconsax.edit_copy, color: DColors.white)),
    );
  }
}