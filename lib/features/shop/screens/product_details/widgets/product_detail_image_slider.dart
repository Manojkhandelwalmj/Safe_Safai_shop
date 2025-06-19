import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:safe_safai_shop/common/widgets/icons/safesafai_circular_icon.dart';
import 'package:safe_safai_shop/common/widgets/images/safesafai_rounded_image.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiProductImageSlider extends StatelessWidget {
  const SafeSafaiProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return SafeSafaiCurvedEdgeWidget(
        child: Container(
          color: dark ? SafeSafaiColors.darkerGrey : SafeSafaiColors.light,
          child: Stack(
            children: [
              /// Main Large Image
              SizedBox(
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(
                        SafeSafaiSizes.productImageRadius * 2),
                    child: Center(
                        child: Image(
                            image:
                            AssetImage(SafeSafaiImages.productImage1))),
                  )),

              /// Image Slider
              Positioned(
                right: 0,
                bottom: 30,
                left: SafeSafaiSizes.defaultSpace,
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    separatorBuilder: (_, __) => const SizedBox(
                      width: SafeSafaiSizes.spaceBtwItems,
                    ),
                    itemBuilder: (_,index) =>SafeSafaiRoundedImage(
                      width: 80,
                      backgroundColor:
                      dark ? SafeSafaiColors.dark : SafeSafaiColors.white,
                      border: Border.all(color: SafeSafaiColors.primary),
                      paddinng: const EdgeInsets.all(SafeSafaiSizes.sm),
                      imageUrl: SafeSafaiImages.productImage1,
                    ),
                  ),
                ),
              ),

              /// Appbar Icons
              SafeSafaiAppBar(
                showBackArrow: true,
                actions: [
                  SafeSafaiCircularIcon(icon: CupertinoIcons.heart_fill, color: Colors.red,)
                ],
              )
            ],
          ),
        ));
  }
}