import 'package:aurakart/common/widgets/appbar/appbar.dart';
import 'package:aurakart/common/widgets/images/rounded_image.dart';
import 'package:aurakart/common/widgets/products/product-cards/product_card_horizontal.dart';
import 'package:aurakart/common/widgets/texts/section_heading.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCatogoriesScreen extends StatelessWidget {
  const SubCatogoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AAppBar(title: Text('sports shirts'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              /// banner
              const ARoundedImage(
                  width: double.infinity,
                  height: null,
                  imageUrl: AImages.promoBanner3,
                  applyImageRadius: true),
              const SizedBox(height: ASizes.spaceBtwSections),

              /// Sub-categories
              Column(
                children: [
                  ///Heading
                  ASectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: ASizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: ASizes.spaceBtwItems),
                        itemBuilder: (context, index) =>
                            const AProductHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
