import 'package:aurakart/common/widgets/appbar/appbar.dart';
import 'package:aurakart/common/widgets/images/rounded_image.dart';
import 'package:aurakart/common/widgets/products/product-cards/product_card_horizontal.dart';
import 'package:aurakart/common/widgets/shimmers/horizontal_product_shimmer.dart';
import 'package:aurakart/common/widgets/texts/section_heading.dart';
import 'package:aurakart/features/shop/controllers/category_controller.dart';
import 'package:aurakart/features/shop/models/category_model.dart';
import 'package:aurakart/features/shop/screens/all_products/all_products.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/helpers/cloud_helper_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubCatogoriesScreen extends StatelessWidget {
  const SubCatogoriesScreen({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final controller = CategoryController.instance;
    return Scaffold(
      // Appbar
      appBar: AAppBar(
        title: Text(category.name),
        showBackArrow: true,
      ),
      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const ARoundedImage(
                width: double.infinity,
                height: null,
                imageUrl: AImages.promoBanner3,
                applyImageRadius: true,
              ),

              const SizedBox(height: ASizes.spaceBtwSections),

              /// Sub-Categories
              FutureBuilder(
                  future: controller.getSubCategories(category.id),
                  builder: (context, snapshot) {
                    /// Handle Loader ,No Record, OR Error Message
                    const loader = AHorizontalProductShimmer();
                    final widget = ACloudHelperFunctions.checkMultiRecordState(
                        snapshot: snapshot, loader: loader);
                    if (widget != null) return widget;

                    /// Record found
                    final subCatogories = snapshot.data!;

                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: subCatogories.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) {
                        final subCatogory = subCatogories[index];
                        return FutureBuilder(
                            future: controller.getCategoryProducts(
                                categoryId: subCatogory.id),
                            builder: (context, snapshot) {
                              final widget =
                              /// Handle Loader ,No Record, OR Error Message
                              
                                  ACloudHelperFunctions.checkMultiRecordState(
                                      snapshot: snapshot, loader: loader);
                              if (widget != null) return widget;

                              /// Congratulations  Record found
                              final products = snapshot.data!;

                              return Column(
                                children: [
                                  ASectionHeading(
                                    title: subCatogory.name,
                                    onPressed: () => Get.to(
                                      () => AllProducts(
                                        title: subCatogory.name,
                                        futureMethod:
                                            controller.getCategoryProducts(
                                                categoryId: subCatogory.id,
                                                limit: -1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: ASizes.spaceBtwItems / 2,
                                  ),

                                  /// Heading

                                  SizedBox(
                                    height: 120,
                                    child: ListView.separated(
                                      itemCount: products.length,
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) =>
                                          const SizedBox(
                                              width: ASizes.spaceBtwItems),
                                      itemBuilder: (context, index) =>
                                           AProductHorizontal(product: products[index]),
                                    ),
                                  ),
                                 const SizedBox(height: ASizes.spaceBtwSections,)
                                ],
                              );
                            });
                      },
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
