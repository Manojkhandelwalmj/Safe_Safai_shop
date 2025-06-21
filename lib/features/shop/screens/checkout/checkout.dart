import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:safe_safai_shop/common/widgets/products/cart/coupon_widget.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/common/widgets/success_screen/success_screen.dart';
import 'package:safe_safai_shop/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:safe_safai_shop/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:safe_safai_shop/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:safe_safai_shop/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:safe_safai_shop/navigation_menu.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: SafeSafaiAppBar(
        showBackArrow: true,
        title: Text('Order Review',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SafeSafaiSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in cart
              const SafeSafaiCartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwSections,
              ),

              /// -- Coupon TextField
              SafeSafaiCouponCode(),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwSections,
              ),

              /// -- Billing Section
              SafeSafaiRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(SafeSafaiSizes.md),
                backgroundColor:
                    dark ? SafeSafaiColors.black : SafeSafaiColors.white,
                child: Column(
                  children: [
                    /// Pricing
                    SafeSafaiBillingAmountSection(),
                    const SizedBox(
                      height: SafeSafaiSizes.spaceBtwItems,
                    ),

                    /// Divider
                    Divider(),
                    const SizedBox(
                      height: SafeSafaiSizes.spaceBtwItems,
                    ),

                    /// Payment Methods
                    SafeSafaiBillingPaymentSection(),
                    const SizedBox(
                      height: SafeSafaiSizes.spaceBtwItems,
                    ),

                    /// Address
                    SafeSafaiBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(SafeSafaiSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                image: SafeSafaiImages.confirmAnimation,
                title: 'Payment Successful',
                subtitle: 'Your Item will be shipped soon!',
                onPressed: () => Get.offAll(() => const NavigationMenu()))),
            child: const Text('Checkout ₹2372')),
      ),
    );
  }
}
