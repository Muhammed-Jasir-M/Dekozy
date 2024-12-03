import 'package:aurakart/common/widgets/appbar/appbar.dart';
import 'package:aurakart/common/widgets/images/circular_image.dart';
import 'package:aurakart/common/widgets/texts/section_heading.dart';
import 'package:aurakart/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                        image: TImages.user, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwItems / 2),

              /// Details
              const Divider(),

              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Personal Info
              const TSectionHeading(
                title: 'Personal Information',
                showActionbutton: false,
              ),
              
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                title: 'User ID',
                value: '45689',
                icon: Iconsax.copy,
                onPressed: () {},
              ),

              TProfileMenu(
                title: 'E-mail',
                value: 'support@aurakart.com',
                onPressed: () {},
              ),

              TProfileMenu(
                title: 'Phone Number',
                value: '+91-3178059528',
                onPressed: () {},
              ),

              TProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),

              TProfileMenu(
                title: 'Date of Birth',
                value: '18 Oct, 2000',
                onPressed: () {},
              ),
              
              const Divider(),

              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
