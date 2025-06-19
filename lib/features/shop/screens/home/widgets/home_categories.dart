import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:safe_safai_shop/features/shop/screens/sub_category/sub_categories.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';

class SafeSafaiHomeCategory extends StatelessWidget {
  const SafeSafaiHomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return SafeSafaiVerticalImageText(
              image: SafeSafaiImages.shoeIcon,
              title: 'Shoes',
              onTap: () => Get.to(() => const SubcategoriesScreen()),

            );
          }),
    );
  }
}