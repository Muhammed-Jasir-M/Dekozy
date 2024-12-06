import 'package:aurakart/common/widgets/appbar/appbar.dart';
import 'package:aurakart/common/widgets/appbar/tabbar.dart';
import 'package:aurakart/common/widgets/brands/brand_show_case.dart';
import 'package:aurakart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:aurakart/common/widgets/custom_shapes/container/search_container.dart';
import 'package:aurakart/common/widgets/images/circular_image.dart';
import 'package:aurakart/common/widgets/layouts/grid_layout.dart';
import 'package:aurakart/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:aurakart/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:aurakart/common/widgets/texts/section_heading.dart';
import 'package:aurakart/common/widgets/brands/brand_card.dart';
import 'package:aurakart/features/shop/screens/store/widgets/category_tab.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/enums.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        /// Appbar
        appBar: AAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            ACartCouterIcon(onPressed: () {}),
          ],
        ),

        /// Header
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxisScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? AColors.black : AColors.white,
                expandedHeight: 440, // Space between Appbar and Tapbar
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(ASizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// Search Bar
                      const SizedBox(height: ASizes.spaceBtwItems),
                      const ASearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),

                      const SizedBox(height: ASizes.spaceBtwSections),

                      /// Featured Brands
                      ASectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),

                      const SizedBox(height: ASizes.spaceBtwItems / 1.5),

                      /// Brands Grid
                      AGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const ABrandCard(showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),

                /// Tabs
                bottom: const ATabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          // Body
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
