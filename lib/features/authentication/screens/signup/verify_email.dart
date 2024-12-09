import 'package:aurakart/common/widgets/appbar/appbar.dart';
import 'package:aurakart/common/widgets/success_screen/success_screen.dart';
import 'package:aurakart/features/authentication/screens/login/login.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/constants/text_strings.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:aurakart/utils/http/http_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Appbar
        appBar: AAppBar(
          showBackArrow: false,
          actions: [
            // To go back to Login Screen
            IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear),
            ),
          ],
        ),
      
        // Body
        body: SingleChildScrollView(
          /// Padding to all sides
          child: Padding(
            padding: const EdgeInsets.all(ASizes.defaultSpace),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  /// Image
                  Image(
                    image: const AssetImage(AImages.deleiveredEmailIllustration),
                    width: AHelperFunctions.screenWidth() * 0.6,
                  ),
      
                  const SizedBox(height: ASizes.spaceBtwSections),
      
                  /// Title
                  Text(
                    ATexts.confirmEmail,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
      
                  const SizedBox(height: ASizes.spaceBtwItems),
      
                  /// Email
                  Text(
                    'support@aurakart.com',
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
      
                  const SizedBox(height: ASizes.spaceBtwItems),
      
                  /// Sub-Title
                  Text(
                    ATexts.confirmEmailSubTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
      
                  const SizedBox(height: ASizes.spaceBtwSections),
      
                  // Continue Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.to(
                        () => SuccessScreen(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          image: AImages.signupSuccessIllustration,
                          title: ATexts.yourAccountCreatedTitle,
                          subTitle: ATexts.yourAccountCreatedSubTitle,
                        ),
                      ),
                      child: const Text(ATexts.tContinue),
                    ),
                  ),
      
                  const SizedBox(height: ASizes.spaceBtwItems),
      
                  // Resent Email Button
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      child: const Text(ATexts.resendEmail),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
