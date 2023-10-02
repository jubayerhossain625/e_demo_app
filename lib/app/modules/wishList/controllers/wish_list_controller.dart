import 'package:get/get.dart';

import '../../productView/product_model.dart';

class WishListController extends GetxController {
  //TODO: Implement WishListController
  RxList<ProductModel> wishList = <ProductModel>[].obs;
  bool isLoaded = false;
  get myWishlist => wishList;

  void resetList(List<ProductModel> item) {
    wishList.map((item) {
      return item;
    }).toList();
    update();
  }


  void addToWishList(ProductModel product){
    wishList.add(product);
  }

  void remove(ProductModel product){
    wishList.remove(product);
    wishList.refresh();
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
