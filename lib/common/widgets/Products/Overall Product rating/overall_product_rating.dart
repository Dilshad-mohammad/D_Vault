import 'package:flutter/material.dart';

import '../../../../features/shop/screens/Product Reviews/Widgets/rating_progress_indicator.dart';

class DOverallProductRating extends StatelessWidget {
  const DOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 4,child: Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
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