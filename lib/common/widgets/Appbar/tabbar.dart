import 'package:flutter/material.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/device/device_utility.dart';

import '../../../utils/helpers/helper_function.dart';

class DTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrap them in Material widget.
  /// to do that we need [preferredSize] widgt and that's why created custom class. [preferredSize]
  const DTabBar({super.key, required this.tabs, this.padding});

  final List<Widget> tabs;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? DColors.black : DColors.white,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        padding: padding,
        tabs: tabs,
        isScrollable: true,
        indicatorColor: DColors.primary,
        labelColor: dark ? DColors.white : DColors.primary,
        unselectedLabelColor: DColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DDeviceUtils.getAppBarHeight());
}
