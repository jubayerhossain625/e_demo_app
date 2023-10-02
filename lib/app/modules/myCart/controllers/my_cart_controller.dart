import 'package:e_demo_app/app/data/hardDataService.dart';
import 'package:get/get.dart';

import '../../productView/product_model.dart';

class MyCartController extends GetxController {
  //TODO: Implement MyCartController

  RxList<ProductModel> myCart = <ProductModel>[].obs;
   bool isLoaded = false;

  void resetList(List<ProductModel> item) {
    myCart.map((item) {
      return item;
    }).toList();
    update();
  }


  void addToCard(ProductModel product){
    myCart.add(product);
  }
  @override
  void onInit() {
    super.onInit();
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
