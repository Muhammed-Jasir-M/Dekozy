import 'package:aurakart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ASingleAddress extends StatelessWidget {
  const ASingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return ARoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? AColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? AColors.darkerGrey
              : AColors.grey,
      margin: EdgeInsets.only(bottom: ASizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
              right: 5,
              top: 0,
              child: Icon(
                selectedAddress ? Iconsax.tick_circle5 : null,
                color: selectedAddress
                    ? dark
                        ? AColors.light
                        : AColors.dark
                    : null,
              )),
          Column(
            children: [
              Text(
                'john due',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: ASizes.sm / 2),
              const Text('(+123) 456 7890',
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: ASizes.sm / 2),
              const Text('82356 Timmy Coves, South Liana, Maine, 87665, USA',
                  softWrap: true),
            ],
          )
        ],
      ),
    );
  }
}
