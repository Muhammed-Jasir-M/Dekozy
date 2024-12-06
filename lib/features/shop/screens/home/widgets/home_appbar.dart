import 'package:aurakart/common/widgets/appbar/appbar.dart';
import 'package:aurakart/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class AHomeAppbar extends StatelessWidget {
  const AHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ATexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: AColors.grey),
          ),
          Text(
            ATexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: AColors.white),
          ),
        ],
      ),
      actions: [
        ACartCouterIcon(
          onPressed: () {},
          iconColor: AColors.white,
        ),
      ],
    );
  }
}
