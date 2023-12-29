import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/kText.dart';
import '../controllers/my_cart_controller.dart';
import 'cardItem.dart';

class MyCartView extends GetView<MyCartController> {
  const MyCartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title:  Column(
          children: [
            KText(text: 'My Cart',fontSize: 18,fontWeight: FontWeight.w700,letterSpacing: 1,),
            KText(text: 'Tue, 12 April 2023'),
          ],
        ),
        centerTitle: true,
      ),
      body:  Container(
        color: Colors.transparent,
        height: Get.height,width: Get.width,
        child: Column(
          children:  [
              Container( color: Colors.transparent,
                  height: Get.height*0.78,
                  child: const CardItem()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed(Routes.ORDER_CHECK_OUT);
                    },
                    child: Container(
                        width: Get.width,height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green,
                          borderRadius: BorderRadius.circular(18.0)
                        ),
                        child: KText(text: "Place Order",fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white,)),
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
