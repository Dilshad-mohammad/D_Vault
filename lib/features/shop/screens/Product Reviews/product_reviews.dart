import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/Appbar/appbar.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

import '../../../../common/widgets/Products/Overall Product rating/overall_product_rating.dart';
import '../../../../common/widgets/Products/Rating star/rating_star.dart';
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
        child: Padding(padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Rating and Reviews are verified and are from people who use the same type of device that you use.'),
            const SizedBox(height: DSizes.spaceBtwItems),

            /// Overall Product Rating
            const DOverallProductRating(),
            const DRatingBarIndicator(rating: 3.5),
            Text('21,658', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: DSizes.spaceBtwSections),

            /// User Reviews List
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
        ),
      ),
    );
  }
}


