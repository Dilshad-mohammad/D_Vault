import 'package:flutter/material.dart';

import 'curved_edges.dart';

class DCurvedEdgesWidget extends StatelessWidget {
  const DCurvedEdgesWidget({
    super.key, this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DCustomCurvedEdges(),
      child: child,
    );
  }
}