import 'package:aurakart/common/widgets/products/sortable/sortable_products.dart';
import 'package:aurakart/features/shop/models/product_model.dart';
import 'package:aurakart/features/shop/screens/brand/brand_products.dart';
import 'package:flutter/material.dart';
import 'package:aurakart/common/widgets/appbar/appbar.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/common/widgets/texts/section_heading.dart';
import 'package:aurakart/common/widgets/layouts/grid_layout.dart';
import 'package:aurakart/common/widgets/brands/brand_card.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: const AAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const ASectionHeading(title: 'Brands', showActionbutton: false),
              const SizedBox(height: ASizes.spaceBtwItems),

              /// Brands
              AGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => ABrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => BrandProducts(product: product)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
