import 'package:aurakart/common/widgets/appbar/appbar.dart';
import 'package:aurakart/features/shop/screens/orders/widgets/orders_list.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///appbar
       appBar: AAppBar(title: Text('My Lovely Orders' , style: Theme.of(context).textTheme.headlineSmall),  showBackArrow: true), 
       body: const Padding(
       padding: EdgeInsets.all(ASizes.defaultSpace),


        ///orders
        
        child: AOrderListItems(),
        ),
    );
  }
}