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
                CircleAvatar(backgroundImage: AssetImage(DImages.userProfileImage1)),
                SizedBox(width: DSizes.spaceBtwItems),
                Text('Anshi Gupta', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
          ],
        ),
        Row(
          children: [
            DRatingBarIndicator(rating: 4),
            SizedBox(width: DSizes.spaceBtwItems),
            Text('28 Aug 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: DSizes.spaceBtwItems),
        ReadMoreText(
          'The user Interface of the app is Quite intuitive. I was able to navigate and make purchase seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' Show less',
          trimCollapsedText: ' Show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: DColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: DColors.primary),
        ),
        const SizedBox(height: DSizes.spaceBtwItems),

        /// Company Private
        DRoundedContainer(
          backgroundColor: dark ? DColors.darkerGrey : DColors.grey,
          child: Padding(padding: EdgeInsets.all(DSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("D'Store", style: Theme.of(context).textTheme.titleMedium),
                  Text('29 Aug 2024', style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              SizedBox(height: DSizes.spaceBtwItems),
              ReadMoreText(
                'The user Interface of the app is Quite intuitive. I was able to navigate and make purchase seamlessly. Great job!',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: ' Show less',
                trimCollapsedText: ' Show more',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: DColors.primary),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: DColors.primary),
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
