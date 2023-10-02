import 'package:e_demo_app/app/data/hardDataService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  List<CarouselItem> itemList = [];
  RxBool isLoaded = false.obs;

  @override
  void onInit() {
    super.onInit();
    isLoaded.value = true;
    getBanner();
    isLoaded.value = false;
  }

  void getBanner(){

    HardDataService().banner.forEach((element) {
      itemList.add(
        CarouselItem(
            image: NetworkImage(element.image.toString(),),
            title: element.title.toString(),
            leftSubtitle: element.subtitle,
            titleTextStyle: const TextStyle(color: Colors.orange,fontSize: 14,fontWeight: FontWeight.bold),
            leftSubtitleTextStyle: const TextStyle(color: Colors.orange,fontSize: 13,fontWeight: FontWeight.bold),
            boxDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            )
        ),
      );
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
