import 'package:aurakart/common/styles/shadows.dart';
import 'package:aurakart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:aurakart/common/widgets/icons/circular_icon.dart';
import 'package:aurakart/common/widgets/images/rounded_image.dart';
import 'package:aurakart/common/widgets/products/favourite_icon/favourite_icon.dart';
import 'package:aurakart/common/widgets/products/product-cards/product_card_add_to_cart_btn.dart';
import 'package:aurakart/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:aurakart/common/widgets/texts/product_price_text.dart';
import 'package:aurakart/common/widgets/texts/product_title_text.dart';
import 'package:aurakart/features/shop/controllers/product/product_controller.dart';
import 'package:aurakart/features/shop/models/product_model.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/enums.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AProductHorizontal extends StatelessWidget {
  const AProductHorizontal({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);

    final controller = ProductController.instance;

    final salePercentage = controller.calculateSalePercentage(
      product.price,
      product.salePrice,
    );

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ASizes.productImageRadius),
        color: darkMode ? AColors.darkerGrey : AColors.softGrey,
      ),
      child: Row(
        children: [
          /// Thumbnail
          ARoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(ASizes.sm),
            backgroundColor: darkMode ? AColors.dark : AColors.light,
            child: Stack(
              children: [
                /// Thumbnail Image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: ARoundedImage(
                    imageUrl: product.thumbnail,
                    applyImageRadius: true,
                    isNetworkImage: true,
                  ),
                ),

                /// Sale Tag
                Positioned(
                  top: 12,
                  child: ARoundedContainer(
                    radius: ASizes.sm,
                    backgroundColor: AColors.secondary.withValues(alpha: 0.8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: ASizes.sm,
                      vertical: ASizes.xs,
                    ),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: AColors.black),
                    ),
                  ),
                ),

                /// Favourite Icon Button
                Positioned(
                  top: 0,
                  right: 0,
                  child: AFavouriteIcon(productId: product.id),
                ),
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(left: ASizes.sm, top: ASizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AProductTitleText(
                        title: product.title,
                        smallSize: true,
                      ),
                      SizedBox(height: ASizes.spaceBtwItems / 2),
                      ABrandTitleWithVerifiedIcon(title: product.brand!.name),
                    ],
                  ),

                  const Spacer(),

                  /// Price Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      Flexible(
                        child: Column(
                          children: [
                            if (product.productType ==
                                    ProductType.single.toString() &&
                                product.salePrice > 0)
                              Padding(
                                padding: const EdgeInsets.only(left: ASizes.sm),
                                child: Text(
                                  product.price.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .apply(
                                          decoration:
                                              TextDecoration.lineThrough),
                                ),
                              ),

                            /// Price, Show sale price as main price if sale exist
                            Padding(
                              padding: const EdgeInsets.only(left: ASizes.sm),
                              child: AProductPriceText(
                                price: controller.getProductPrice(product),
                              ),
                            ),
                          ],
                        ),
                      ),

                      /// Add to Cart Button

                      Container(
                        decoration: const BoxDecoration(
                          color: AColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ASizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(ASizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: ASizes.iconLg * 1.2,
                          height: ASizes.iconLg * 1.2,
                          child: Center(
                              child: Icon(Iconsax.add, color: AColors.white)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
