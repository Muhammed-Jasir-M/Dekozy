import '../../../../common/widgets/appbar/appbar.dart';
import 'package:aurakart/common/widgets/products/cart/add_remove_button.dart';
import 'package:aurakart/common/widgets/products/cart/cart_item.dart';
import 'package:aurakart/common/widgets/texts/product_price_text.dart';
import 'package:aurakart/features/shop/screens/checkout/checkout.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body:const Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        /// -- Items in art
        child:ACartitem()
      ),
     
      /// Checkout Button
     
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(()=>const CheckoutScreen()), child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
