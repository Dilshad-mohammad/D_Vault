import 'package:flutter/material.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

class DSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: DSizes.appbarHeight,
    left: DSizes.defaultSpace,
    bottom: DSizes.defaultSpace,
    right: DSizes.defaultSpace,
  );
}