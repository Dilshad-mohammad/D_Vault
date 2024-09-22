import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/Custom%20shapes/Containers/circular_container.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

import '../../../utils/constants/helpers/colors.dart';

/// Most of the Styles are already defined in the Utils -> Themes -> ChipTheme.dart

class DChoiceChip extends StatelessWidget {
  const DChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = DHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? DColors.white : null),
        avatar: isColor ? DCircularContainer(width: 50, height: 50, backgroundColor: DHelperFunctions.getColor(text)!) : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        // Make icon in the center
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? DHelperFunctions.getColor(text)! : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
      ),
    );
  }
}