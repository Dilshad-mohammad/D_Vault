import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/shop/controllers/home_controllers.dart';
import '../../../../../common/widgets/Custom shapes/Containers/circular_container.dart';
import '../../../../../common/widgets/Images/drounded_image.dart';
import '../../../../../utils/constants/helpers/colors.dart';
import '../../../../../utils/constants/helpers/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            viewportFraction: 1,
            onPageChanged: (index, __) => controller.updatePageIndicator(index)
          ),
          items: banners.map((url) => DRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: DSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  DCircularContainer(
                      width: 20, height: 4,
                      margin: const EdgeInsets.only(right: 10),
                      backgroundColor: controller.carousalCurrentIndex.value == i ? DColors.primary : DColors.grey),
              ],
            ),
          ),
        )
      ],
    );
  }
}