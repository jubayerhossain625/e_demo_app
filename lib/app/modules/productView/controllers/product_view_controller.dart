import 'package:e_demo_app/app/modules/productView/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:get/get.dart';

class ProductViewController extends GetxController {
  //TODO: Implement ProductViewController

  List<CarouselItem> productsImages = [];
  RxBool isLoaded = false.obs;

  @override
  void onInit() {
    super.onInit();
    isLoaded.value = true;
    reset();
  }

  void reset(){
    productsImages.clear();
    productsImages=[];
  }

  void getBanner(ProductModel banner){
    isLoaded.value = true;
    reset();
    banner.images!.forEach((element) {
      productsImages.add(
        CarouselItem(
            image: NetworkImage(element.toString().toString(),),
            titleTextStyle: const TextStyle(color: Colors.orange,fontSize: 14,fontWeight: FontWeight.bold),
            leftSubtitleTextStyle: const TextStyle(color: Colors.orange,fontSize: 13,fontWeight: FontWeight.bold),
            boxDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            )
        ),
      );
    });
    isLoaded.value = false;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    reset();
    super.onClose();
  }
}
