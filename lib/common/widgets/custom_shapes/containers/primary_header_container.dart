import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';

class SafeSafaiPrimaryHeaderContainer extends StatelessWidget {
  const SafeSafaiPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeSafaiCurvedEdgeWidget(
      child: Container(
        color: SafeSafaiColors.primary,

        /// -- [size.isFinite': is not true] Error -> Read README.md file at [Design Errors] #1
        child: Stack(
          children: [
            /// -- Background Custom Shapes
            Positioned(
                top: -200, right: 0, child: SafeSafaiCircularContainer()),
            Positioned(
                top: 200, left: 300, child: SafeSafaiCircularContainer()),
            child,
          ],
        ),
      ),
    );
  }
}