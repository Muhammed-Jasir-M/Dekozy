import 'package:aurakart/common/widgets/appbar/appbar.dart';
import 'package:aurakart/common/widgets/products/cart/add_remove_button.dart';
import 'package:aurakart/common/widgets/products/cart/cart_item.dart';
import 'package:aurakart/common/widgets/texts/product_price_text.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: ListView.separated(
          itemCount: 10,
          shrinkWrap: true,
          separatorBuilder: (_, __) => const SizedBox(
            height: ASizes.spaceBtwSections,
          ),
          itemBuilder: (_, index) => const Column(
            children: [
              ACartitem(),
              SizedBox(height: ASizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      /// Extra Space
                      SizedBox(width: 70),

                      /// Add remove buttons
                      AProductQuantityWithAddRemoveButton(),
                    ],
                  ),

                  /// Product total price
                  AProductPriceText(price: '256'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {}, child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
