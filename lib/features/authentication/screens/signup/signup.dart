import 'package:aurakart/common/widgets/login_signup/form_divider.dart';
import 'package:aurakart/common/widgets/login_signup/social_buttons.dart';
import 'package:aurakart/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                ATexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: ASizes.spaceBtwSections,
              ),

              /// Forms
              const ASignupForm(),

              const SizedBox(height: ASizes.spaceBtwSections),

              /// Divider
              AFormDivider(dividerText: ATexts.orSignUpWith.capitalize!),

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
