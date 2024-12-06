import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AVerticalImageText extends StatelessWidget {
  const AVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ASizes.spaceBtwItems),
        child: Column(
          children: [
            /// Circular icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(ASizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? Colors.black : AColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: const AssetImage(AImages.sportIcon),
                  fit: BoxFit.cover,
                  color: dark ? AColors.light : AColors.dark,
                ),
              ),
            ),

            const SizedBox(height: ASizes.spaceBtwItems / 2),

            /// Text
            SizedBox(
              width: 55,
              child: Text(
                'shoes category',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: AColors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
