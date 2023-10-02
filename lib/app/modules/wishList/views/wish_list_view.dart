import 'package:e_demo_app/app/modules/wishList/views/wishproduct.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/kText.dart';
import '../controllers/wish_list_controller.dart';

class WishListView extends GetView<WishListController> {
  const WishListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final WishListController wishListController = Get.put(WishListController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:  KText(text:'WishList'),
        leading: const BackButton(color: Colors.black,),
        centerTitle: true,
      ),
      body: SizedBox(
        height: Get.height,width: Get.width,
        child:  ListView.builder(
          itemCount: controller.myWishlist.length,
            itemBuilder:(context, index){
            final item = controller.myWishlist[index];
          return WishProduct(product: item,);
        },
    )

      )
    );
  }
}
