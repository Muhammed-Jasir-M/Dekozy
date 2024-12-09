import 'package:aurakart/common/widgets/brands/brand_show_case.dart';
import 'package:aurakart/common/widgets/layouts/grid_layout.dart';
import 'package:aurakart/common/widgets/products/product-cards/product_card_veritcal.dart';
import 'package:aurakart/common/widgets/texts/section_heading.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              const ABrandShowcase(
                images: [
                  AImages.productImage10,
                  AImages.productImage11,
                  AImages.productImage16
                ],
              ),

              const ABrandShowcase(
                images: [
                  AImages.productImage10,
                  AImages.productImage11,
                  AImages.productImage16
                ],
              ),

              const SizedBox(height: ASizes.spaceBtwItems),

              // Products
              ASectionHeading(
                title: 'You might like',
                showActionbutton: true,
                onPressed: () {},
              ),

              const SizedBox(height: ASizes.spaceBtwItems),

              AGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const AProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
