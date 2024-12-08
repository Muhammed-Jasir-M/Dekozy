import 'package:aurakart/common/widgets/appbar/appbar.dart';
import 'package:aurakart/common/widgets/layouts/grid_layout.dart';
import 'package:aurakart/common/widgets/products/product-cards/product_card_veritcal.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AAppBar(title: Text('popular products'), showBackArrow: true),
        body: SingleChildScrollView(
            child: Padding(
            padding: EdgeInsets.all(ASizes.defaultSpace),
            child: Column(
                children: [

                    ///DropDown
                    DropdownButtonFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                        onChanged: (value){},
                        items: ['Name', 'Higher Price', 'Lower Price','Newest','Popularity']
                        .map((option) => DropdownMenuItem(value: option, child: Text(option)))
                        .toList(),
                    ),
                    const SizedBox(height: ASizes.spaceBtwSections),

                    ///Products
                    AGridLayout(itemCount: 8, itemBuilder: (_, index) => const AProductCardVertical())
                ],
            ),
            ),
        ) ,
    );
  }
}