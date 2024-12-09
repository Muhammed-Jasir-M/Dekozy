import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/constants/text_strings.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ALoginHeader extends StatelessWidget {
  const ALoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Logo
        Image(
          height: 150,
          image: AssetImage(
            darkMode ? AImages.lightAppLogo : AImages.darkAppLogo,
          ),
        ),

        // Title
        Text(
          ATexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium
        ),

        const SizedBox(height: ASizes.sm),

        // Sub-Title
        Text(
          ATexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
