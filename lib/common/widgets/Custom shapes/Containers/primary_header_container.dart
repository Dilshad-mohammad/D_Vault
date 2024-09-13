import 'package:flutter/material.dart';

import '../../../../utils/constants/helpers/colors.dart';
import '../Curved Edges/curved_edges_widget.dart';
import 'circular_container.dart';

class DPrimaryHeaderContainer extends StatelessWidget {
  const DPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DCurvedEdgesWidget(
      child: Container(
        color: DColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: DCircularContainer(
                      backgroundColor: DColors.textWhite.withOpacity(0.15)),
              ),
              Positioned(
                  top: 100,
                  right: -300,
                  child: DCircularContainer(
                      backgroundColor: DColors.textWhite.withOpacity(0.15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
