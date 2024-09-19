import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../utils/constants/helpers/colors.dart';

class DRatingBarIndicator extends StatelessWidget {
  const DRatingBarIndicator({
    super.key,
    required this.rating,
  });

  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        unratedColor: Colors.grey,
        itemBuilder: (_, __) => const Icon(Icons.star, color: DColors.primary));
  }
}