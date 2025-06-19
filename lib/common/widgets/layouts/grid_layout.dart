import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SafeSafaiGridLayout extends StatelessWidget {
  const SafeSafaiGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: mainAxisExtent,
            mainAxisSpacing: SafeSafaiSizes.gridViewSpacing,
            crossAxisSpacing: SafeSafaiSizes.gridViewSpacing,
        ),
        itemBuilder: itemBuilder,
    );
  }
}
