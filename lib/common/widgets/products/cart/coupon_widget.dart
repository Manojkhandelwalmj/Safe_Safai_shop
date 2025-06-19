import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiCouponCode extends StatelessWidget {
  const SafeSafaiCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return SafeSafaiRoundedContainer(
      showBorder: true,
      backgroundColor:
      dark ? SafeSafaiColors.dark : SafeSafaiColors.white,
      padding: EdgeInsets.only(
          top: SafeSafaiSizes.sm,
          bottom: SafeSafaiSizes.sm,
          right: SafeSafaiSizes.sm,
          left: SafeSafaiSizes.md),
      child: Row(
        children: [
          /// TextField
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter here',
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),

          /// Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark ? SafeSafaiColors.white.withOpacity(0.5) : SafeSafaiColors.dark.withOpacity(0.5),
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      side: BorderSide(color: Colors.grey.withOpacity(0.1),

                      )
                  ),
                  child: Text('Apply')))
        ],
      ),
    );
  }
}