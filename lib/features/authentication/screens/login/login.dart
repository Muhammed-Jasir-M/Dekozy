import 'package:aurakart/common/styles/spacing_styles.dart';
import 'package:aurakart/common/widgets/login_signup/social_buttons.dart';
import 'package:aurakart/features/authentication/screens/login/widgets/login_form.dart';
import 'package:aurakart/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:aurakart/features/authentication/screens/signup/signup.dart';
import 'package:aurakart/common/widgets/login_signup/form_divider.dart';
import 'package:aurakart/navigation_menu.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/constants/text_strings.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingwithAppBarHeight,
          child: Column(
            /// Logo, Title & Sub-Title
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? AImages.lightAppLogo : AImages.darkAppLogo,
                    ),
                  ),
                  Text(
                    ATexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: ASizes.sm,
                  ),
                  Text(
                    ATexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              /// Form
              const ALoginForm(),

              /// Divider
              AFormDivider(dividerText: ATexts.orSignInwith.capitalize!),

              const SizedBox(height: ASizes.spaceBtwSections),

              /// Social Buttons
              const ASocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
