import 'package:aurakart/common/widgets/chips/choice_chips.dart';
import 'package:aurakart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:aurakart/common/widgets/texts/product_price_text.dart';
import 'package:aurakart/common/widgets/texts/product_title_text.dart';
import 'package:aurakart/common/widgets/texts/section_heading.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute Pricing & Description
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              // Title, Price and Stock status
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionbutton: false,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: "Price: ",
                            smallSize: true,
                          ),

                          /// Actual Price
                          Text(
                            '₹25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),

                          const SizedBox(width: TSizes.spaceBtwItems),

                          // Sale Price
                          const TProductPriceText(price: '20'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const TProductTitleText(
                title:
                    "This is the description of the product and it can go up to max 4 lines.",
                smallSize: true,
                maxlines: 4,
              )
            ],
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        /// Atributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: "Colors",
              showActionbutton: false,
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Pink', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: "Size",
              showActionbutton: false,
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'EU 36', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'WU 38', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
