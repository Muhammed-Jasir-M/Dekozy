import 'package:aurakart/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:aurakart/common/widgets/images/rounded_image.dart';
import 'package:aurakart/common/widgets/texts/section_heading.dart';
import 'package:aurakart/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:aurakart/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:aurakart/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:aurakart/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:aurakart/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            const TProductImageSlider(),

            /// Product Details
            Padding(
                padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace,
                ),
                child: Column(
                  children: [
                    /// - Rating & Share Button
                    const TRatingAndShare(),

                    /// - Price, Title, Stack, & Brand
                    const TProductMetaData(),

                    /// -- Attributes
                    const TProductAttributes(),

                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// -- Checkout Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Checkout'),
                      ),
                    ),

                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// -- Description
                    const TSectionHeading(
                      title: "Description",
                      showActionbutton: false,
                    ),

                    const SizedBox(height: TSizes.spaceBtwItems),

                    const ReadMoreText(
                      'This is a product description for Blue Nike Sleeve less vest. There are more things that can be addedThis is a product description for Blue Nike Sleeve less vest. There are more things that can be adde',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: ' Less',
                      moreStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),

                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// -- Reviews
                    const Divider(),

                    const SizedBox(height: TSizes.spaceBtwItems),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TSectionHeading(
                          title: 'Reviews(99)',
                          showActionbutton: false,
                        ),

                        IconButton(
                          icon: const Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),

                    const SizedBox(height: TSizes.spaceBtwSections),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
