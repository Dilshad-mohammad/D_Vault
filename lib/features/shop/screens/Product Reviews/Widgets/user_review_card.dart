import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:untitled/common/widgets/Custom%20shapes/Containers/rounded_container.dart';
import 'package:untitled/common/widgets/Products/Rating%20star/rating_star.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(DImages.userProfileImage1)),
                const SizedBox(width: DSizes.spaceBtwItems),
                Text('Anshi Gupta',
                    style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const DRatingBarIndicator(rating: 4),
            const SizedBox(width: DSizes.spaceBtwItems),
            Text('28 Aug 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: DSizes.spaceBtwItems),
        const ReadMoreText(
          'The user Interface of the app is Quite intuitive. I was able to navigate and make purchase seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' Show less',
          trimCollapsedText: ' Show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: DColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: DColors.primary),
        ),
        const SizedBox(height: DSizes.spaceBtwItems),

        /// Company Private
        DRoundedContainer(
          backgroundColor: dark ? DColors.darkerGrey : DColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(DSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("D'Store",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('29 Aug 2024',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: DSizes.spaceBtwItems),
                const ReadMoreText(
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' Show less',
                  trimCollapsedText: ' Show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: DColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: DColors.primary),
                  '''Dear Anshi Gupta,
Thank you so much for your kind words and positive feedback! We are thrilled to hear that you had a great experience with our service. Your satisfaction is our top priority, and it’s wonderful to know that we met your expectations.
We truly appreciate you taking the time to share your experience with us. Your feedback motivates us to continue delivering the best possible service to our valued customers like you.
If you have any further questions or need assistance, please don’t hesitate to reach out. We look forward to serving you again soon!

Warm regards, 
D_Vault
''',
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: DSizes.spaceBtwSections),
      ],
    );
  }
}
