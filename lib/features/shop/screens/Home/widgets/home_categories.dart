import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/shop/screens/Sub%20Category/sub_categories.dart';
import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/helpers/image_strings.dart';

class DHomeCategories extends StatelessWidget {
  const DHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return DVerticalImageText(image: DImages.shoeIcon, title: 'Shoes Categories', onTap: () => Get.to(const SubCategoriesScreen()),);
        },
      ),
    );
  }
}
