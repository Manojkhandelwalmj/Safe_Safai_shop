import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiSingleAddress extends StatelessWidget {
  const SafeSafaiSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return SafeSafaiRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(SafeSafaiSizes.md),
      backgroundColor: selectedAddress
          ? SafeSafaiColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? SafeSafaiColors.darkerGrey
              : SafeSafaiColors.grey,
      margin: const EdgeInsets.only(bottom: SafeSafaiSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Icons.check_circle : null,
              color: selectedAddress
                  ? dark
                      ? SafeSafaiColors.light
                      : SafeSafaiColors.dark.withOpacity(0.6)
                  : null,
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Manoj',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: SafeSafaiSizes.sm / 2,),
              const Text('(+91) 6367936385', maxLines: 1, overflow: TextOverflow.ellipsis,),
              const Text('Hostel, Gec Banswara, Behind Mayur mill, lodha Banswara 327001',softWrap: true,)
            ],
          )
        ],
      ),
    );
  }
}
