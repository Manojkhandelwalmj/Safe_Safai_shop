import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/device/device_utility.dart';

class SafeSafaiRatingProgressIndicator extends StatelessWidget {
  const SafeSafaiRatingProgressIndicator({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1,child: Text(text, style: Theme.of(context).textTheme.bodyMedium,)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: SafeSafaiDeviceUtils.getScreenWidth()* 0.5,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: SafeSafaiColors.grey,
              valueColor: AlwaysStoppedAnimation(SafeSafaiColors.primary),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        )
      ],
    );
  }
}