import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/device/device_utility.dart';

class DAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DAppBar({
    super.key,
    this.title,
    this.showBackArrow =false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow ?
        IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left_copy))
        : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DDeviceUtils.getAppBarHeight());
}
