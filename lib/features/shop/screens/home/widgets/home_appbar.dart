import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';

class SafeSafaiHomeAppBar extends StatelessWidget {
  const SafeSafaiHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeSafaiAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            SafeSafaiTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.white),
          ),
          Text(
            SafeSafaiTexts.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          ),
        ],
      ),
      actions: [
        SafeSafaiCartCounterIcon(
          onPressed: () {}, iconColor: Colors.white,
        )
      ], showBackArrow: false,
    );
  }
}