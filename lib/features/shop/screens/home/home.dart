import "package:aurakart/common/widgets/appbar/appbar.dart";
import "package:aurakart/common/widgets/common.widgets.image_text_widgets/vertical_image_text.dart";
import "package:aurakart/common/widgets/custom_shapes/container/primary_header_container.dart";
import "package:aurakart/common/widgets/custom_shapes/container/search_container.dart";
import "package:aurakart/common/widgets/products/cart/cart_menu_icon.dart";
import "package:aurakart/common/widgets/texts/section_heading.dart";
import "package:aurakart/features/shop/screens/home/widgets/home_appbar.dart";
import "package:aurakart/features/shop/screens/home/widgets/home_categories.dart";
import "package:aurakart/utils/constants/colors.dart";
import "package:aurakart/utils/constants/image_strings.dart";
import "package:aurakart/utils/constants/sizes.dart";
import "package:aurakart/utils/constants/text_strings.dart";
import "package:aurakart/utils/device/device_utility.dart";
import "package:aurakart/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  THomeAppbar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Searchbar
                  TSearchContainer(text: 'search in store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///hheading
                        TSectionHeading(
                            title: 'popular Categories',
                            showActionbutton: false,
                            textColor: Colors.white),
                        SizedBox(height: TSizes.spaceBtwItems),
                        ////categories
                        THomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

