import 'package:aurakart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:aurakart/common/widgets/products/ratings/rating_indicator.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(AImages.userProfileImage),
                ),
                const SizedBox(width: ASizes.spaceBtwItems),
                Text(
                  'Niggawhohas3legs',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert),),
          ],
        ),
        const SizedBox(height: ASizes.spaceBtwItems),

        ///review

        Row(
          children: [
            const ARatingBarIndictator(rating: 4),
            const SizedBox(width: ASizes.spaceBtwItems),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(width: ASizes.spaceBtwItems),
        const ReadMoreText(
          'I JUST LOVE THIS APP FROM BOTTOM OF MY HEART ',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show Less',
          trimCollapsedText: 'Show More',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AColors.primary),
        ),
        const SizedBox(height: ASizes.spaceBtwItems),

        ///company review

        ARoundedContainer(
          backgroundColor: dark ? AColors.darkerGrey : AColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(ASizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("AURAKART",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text("2 nov , 2024",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(width: ASizes.spaceBtwItems),
                const ReadMoreText(
                  'I JUST LOVE THIS APP FROM BOTTOM OF MY HEART ',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'Show Less',
                  trimCollapsedText: 'Show More',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: ASizes.spaceBtwSections),
      ],
    );
  }
}
