import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/device/device_utility.dart';

import '../../../../common/widgets/Products/Rating star/rating_star.dart';
import 'Widgets/rating_progress_indicator.dart';
import 'Widgets/user_review_card.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
      appBar: const DAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rating and Reviews are verified and are from people who use the same type of device that you use.'),
            SizedBox(height: DSizes.spaceBtwItems),

            /// Overall Product Rating
            DOverallProductRating(),
            DRatingBarIndicator(rating: 3.5),
            Text('21,658', style: Theme.of(context).textTheme.bodySmall),
            SizedBox(height: DSizes.spaceBtwSections),

            /// User Reviews List
            UserReviewCard(),
            UserReviewCard(),
            UserReviewCard(),
          ],
        ),
        ),
      ),
    );
  }
}



class DOverallProductRating extends StatelessWidget {
  const DOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 4,child: Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        Expanded(
          flex: 6,
          child: Column(
            children: [
              DRatingProgressIndicator(text: '5',value: 1.0),
              DRatingProgressIndicator(text: '4',value: 0.8),
              DRatingProgressIndicator(text: '3',value: 0.6),
              DRatingProgressIndicator(text: '2',value: 0.4),
              DRatingProgressIndicator(text: '1',value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}

