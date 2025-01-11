import 'package:aurakart/common/widgets/texts/section_heading.dart';
import 'package:aurakart/features/personalization/controllers/address_controller.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ABillingAddressSection extends StatelessWidget {
  const ABillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final addressController = AddressController.instance;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ASectionHeading(
            title: 'Shipping Address',
            buttontitle: 'Change',
            onPressed: () => addressController.selectNewAddressPopup(context)),
        addressController.selectedAddress.value.id.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Aurakart',
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: ASizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      const Icon(Icons.phone, color: Colors.grey, size: 16),
                      const SizedBox(width: ASizes.spaceBtwItems),
                      Text(
                        '+91 94728-38442',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: ASizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      const Icon(Icons.location_history,
                          color: Colors.grey, size: 16),
                      const SizedBox(width: ASizes.spaceBtwItems),
                      Expanded(
                        child: Text(
                          'South Liana, Maine 87695, USA',
                          style: Theme.of(context).textTheme.bodyMedium,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : Text('Select Address',
                style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
