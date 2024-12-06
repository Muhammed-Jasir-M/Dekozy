import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/constants/text_strings.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ATermsConditonCheckbox extends StatelessWidget {
  const ATermsConditonCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(width: ASizes.spaceBtwItems),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: ATexts.isAgreeTo,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: ATexts.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? AColors.white : AColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? AColors.white : AColors.primary,
                      ),
                ),
                TextSpan(
                  text: ATexts.and,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: ATexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? AColors.white : AColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? AColors.white : AColors.primary),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
