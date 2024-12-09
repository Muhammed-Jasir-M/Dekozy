import 'package:aurakart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class AOrderListItems extends StatelessWidget {
  const AOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return  ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: ASizes.spaceBtwItems,),
      itemBuilder:(_, index) => ARoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(ASizes.md),
      backgroundColor: dark ? AColors.dark : AColors.light,
      child:  Column(
       mainAxisSize: MainAxisSize.min,
        children: [
      
           ///row1
           
          Row(
            children: [
             
              ///1 icon 
              const Icon(Iconsax.ship),
              const SizedBox(width: ASizes.spaceBtwItems/2),
      
              ///2 status and date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('processing', style: Theme.of(context).textTheme.bodyLarge!.apply(color: AColors.primary, fontWeightDelta: 1),
                     ),
                     Text('07 Nov 2024', style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
              ),
              ///3 icon
              IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_34, size: ASizes.iconSm)),
            ],
          ),  
          const SizedBox(height: ASizes.spaceBtwItems),
          ///row2
           Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                   
                    ///1 icon 
                    const Icon(Iconsax.ship),
                    const SizedBox(width: ASizes.spaceBtwItems/2),
                
                    ///2 status and date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order', style:Theme.of(context).textTheme.labelMedium),
                           Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    ///1 icon 
                    const Icon(Iconsax.calendar),
                    const SizedBox(width: ASizes.spaceBtwItems/2),
                
                    ///2 status and date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shipping Date', style:Theme.of(context).textTheme.labelMedium),
                           Text('05 feb 2025', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ], 
      ),
      ),
    );
  }
}