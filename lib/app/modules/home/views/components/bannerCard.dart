import 'package:e_demo_app/app/modules/home/controllers/home_controller.dart';
import 'package:e_demo_app/app/modules/productView/controllers/product_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:get/get.dart';

class BannerCard extends GetView {
   const BannerCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final HomeController c = Get.put(HomeController());

    return
      c.isLoaded.value == false ?
      CustomCarouselSlider(
      items: c.itemList,
      height: 150,
      subHeight: 50,
      width: MediaQuery.of(context).size.width * .94,
      autoplay: true,
    ) : const CircularProgressIndicator(color: Colors.red,);
  }
}

class ProductImages extends GetView {
  const ProductImages({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final ProductViewController controller = Get.put(ProductViewController());
    controller.isLoaded.isTrue;

    return
      controller.productsImages.isNotEmpty?
      CustomCarouselSlider(
        items: controller.productsImages,
        height: 150,
        subHeight: 50,
        width: MediaQuery.of(context).size.width * .94,
        autoplay: true,
      ) : const Center(child: CircularProgressIndicator(color: Colors.red,));
  }
}
