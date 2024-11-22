import "package:aurakart/common/widgets/appbar/appbar.dart";
import "package:aurakart/common/widgets/custom_shapes/container/primary_header_container.dart";
import "package:aurakart/common/widgets/products/cart/cart_menu_icon.dart";
import "package:aurakart/features/shop/screens/home/widgets/home_appbar.dart";
import "package:aurakart/utils/constants/colors.dart";
import "package:aurakart/utils/constants/text_strings.dart";
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

                  /// Searchbar


                  /// Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
