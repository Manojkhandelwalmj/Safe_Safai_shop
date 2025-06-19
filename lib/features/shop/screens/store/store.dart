import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/common/widgets/appbar/tabbar.dart';
import 'package:safe_safai_shop/common/widgets/brands/brand_cart.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:safe_safai_shop/common/widgets/layouts/grid_layout.dart';
import 'package:safe_safai_shop/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:safe_safai_shop/common/widgets/texts/section_heading.dart';
import 'package:safe_safai_shop/features/shop/screens/brand/all_brands.dart';
import 'package:safe_safai_shop/features/shop/screens/store/widgets/category_tab.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: SafeSafaiAppBar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              SafeSafaiCartCounterIcon(
                onPressed: () {},
              )
            ],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: SafeSafaiHelperFunctions.isDarkMode(context)
                      ? SafeSafaiColors.black
                      : SafeSafaiColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(SafeSafaiSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// -- Search bar
                        const SizedBox(
                          height: SafeSafaiSizes.spaceBtwItems,
                        ),
                        SafeSafaiSearchContainer(
                          text: 'Search in store...',
                          showBorder: true,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: SafeSafaiSizes.spaceBtwSections,
                        ),

                        /// -- Featured Brands
                        SafeSafaiSectionHeading(
                          title: 'Featured Brands',
                          onPressed: ()=> Get.to(() => const AllBrandsScreen()),
                        ),
                        const SizedBox(
                          height: SafeSafaiSizes.spaceBtwItems / 1.5,
                        ),

                        /// -- Brand Grid
                        SafeSafaiGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const SafeSafaiBrandCard(
                                showBorder: false,
                              );
                            })
                      ],
                    ),
                  ),

                  /// -- Tabs
                  bottom: SafeSafaiTabBar(tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Cloths'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Medical'),
                    ),
                    Tab(
                      child: Text('Drinks'),
                    ),
                    Tab(
                      child: Text('Verified'),
                    ),
                  ]),
                )
              ];
            },
            body: const TabBarView(children: [
              SafeSafaiCategoryTab(),
              SafeSafaiCategoryTab(),
              SafeSafaiCategoryTab(),
              SafeSafaiCategoryTab(),
              SafeSafaiCategoryTab(),
              SafeSafaiCategoryTab(),
            ]),
          ),
        ));
  }
}
