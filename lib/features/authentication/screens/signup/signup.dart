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
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            /// Title
            Text(
              TTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Forms
            const TSignupForm(),

            const SizedBox(height: TSizes.spaceBtwSections),

            /// Divider
            TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),

            const SizedBox(height: TSizes.spaceBtwSections),

            /// Social Buttons
            const TSocialButtons(),
            
          ],),
        ),
      ),
    );
  }
}
