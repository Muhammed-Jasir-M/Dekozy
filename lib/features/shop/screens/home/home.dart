import "package:aurakart/common/widgets/appbar/appbar.dart";
import "package:aurakart/common/widgets/custom_shapes/container/circular_container.dart";
import "package:aurakart/common/widgets/custom_shapes/container/primary_header_container.dart";
import "package:aurakart/common/widgets/custom_shapes/container/search_container.dart";
import "package:aurakart/common/widgets/layouts/grid_layout.dart";
import "package:aurakart/common/widgets/products/cart/cart_menu_icon.dart";
import "package:aurakart/common/widgets/products/product-cards/product_card_veritcal.dart";
import "package:aurakart/common/widgets/texts/section_heading.dart";
import "package:aurakart/features/shop/screens/home/widgets/home_appbar.dart";
import "package:aurakart/features/shop/screens/home/widgets/home_categories.dart";
import "package:aurakart/features/shop/screens/home/widgets/promo_slider.dart";
import "package:aurakart/utils/constants/colors.dart";
import "package:aurakart/utils/constants/image_strings.dart";
import "package:aurakart/utils/constants/sizes.dart";
import "package:aurakart/utils/constants/text_strings.dart";
import "package:aurakart/utils/device/device_utility.dart";
import "package:aurakart/utils/helpers/helper_functions.dart";
import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const APrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  AHomeAppbar(),
                  SizedBox(height: ASizes.spaceBtwSections),

                  /// Search bar
                  ASearchContainer(text: 'search in store'),
                  SizedBox(height: ASizes.spaceBtwSections),

                  /// Category Section
                  Padding(
                    padding: EdgeInsets.only(left: ASizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        ASectionHeading(
                          title: 'Popular Categories',
                          showActionbutton: false,
                          textColor: AColors.white,
                        ),

                        SizedBox(height: ASizes.spaceBtwItems),

                        /// Categories
                        AHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: ASizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(ASizes.defaultSpace),
              child: Column(
                children: [
                  // Banner Promo Slider
                  const APromoSlider(
                    banners: [
                      AImages.promoBanner1,
                      AImages.promoBanner2,
                      AImages.promoBanner3,
                    ],
                  ),

                  const SizedBox(height: ASizes.spaceBtwSections),

                  /// Heading
                  ASectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),

                  const SizedBox(height: ASizes.spaceBtwSections),

                  /// Popular Products
                  AGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const AProductCardVertical(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
