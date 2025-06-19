import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class SafeSafaiCurvedEdgeWidget extends StatelessWidget {
  const SafeSafaiCurvedEdgeWidget({
    super.key,required this.child
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SafeSafaiCustomCurvedEdges(),
      child: child,
    );
  }
}