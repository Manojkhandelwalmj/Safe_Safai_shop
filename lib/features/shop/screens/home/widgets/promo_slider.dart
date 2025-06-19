import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:safe_safai_shop/common/widgets/images/safesafai_rounded_image.dart';
import 'package:safe_safai_shop/features/shop/controllers/home_controller.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SafeSafaiPromoSlider extends StatelessWidget {
  const SafeSafaiPromoSlider({
    super.key,required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index,_) => controller.updatePageIndicator(index),
            ),
            items: banners.map((url) => SafeSafaiRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),
        Obx(
          ()=> Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i=0;i<banners.length;i++)
                SafeSafaiCircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carousalCurrentIndex.value == i ? Colors.blue: Colors.grey,
                  margin: const EdgeInsets.only(right: 10),
                ),
            ],
          ),
        )
      ],
    );
  }
}