import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_demo_app/app/data/commonData.dart';
import 'package:e_demo_app/app/modules/myCart/controllers/my_cart_controller.dart';
import 'package:e_demo_app/app/widgets/buttonWidget.dart';
import 'package:e_demo_app/app/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    final MyCartController controller = Get.put(MyCartController());
    return controller.isLoaded==false ? ListView.builder(
      itemCount: controller.myCart.length,
      itemBuilder: (context, index) {
        final product = controller.myCart[index];
        return Container(
          margin: const EdgeInsets.all(6),
          height: 100,
          width: Get.width,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  CachedNetworkImage(imageUrl: Data.watch1,height: 100,width: 100,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KText(text: product.brand,fontWeight: FontWeight.w600,color: Colors.black54,),
                      KText(text: product.title,fontWeight: FontWeight.bold,fontSize: 18,),
                      KText(text: "৳ 220 (220 x 1)",fontWeight: FontWeight.bold,),
                    ],
                  ),

                ],
              ),

              Positioned(
                right: 0,top: 0,
                child: SizedBox(
                  height: 100,width: Get.width,
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(Icons.delete_forever,size: 30,color: Colors.pink,),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Spacer(),
                          ButtonWidget(onTap: (){},
                            height: 25,width:20,radius: 100,
                            widget: const Icon(Icons.add,color: Colors.white,),bgColor: Colors.green,
                          ),
                          const SizedBox(width: 10,),
                          KText(text: "1",fontWeight: FontWeight.bold,fontSize: 18,),
                          const SizedBox(width: 10,),
                          ButtonWidget(onTap: (){},
                            height: 25,width:20,radius: 100,
                            widget: const Icon(Icons.remove,color: Colors.white,),bgColor: Colors.red,
                          ),
                          const SizedBox(width: 5,),
                        ],
                      )
                    ],
                  ),
                ),
              )

            ],
          ),
        );
      }
    ):const Center(child: CircularProgressIndicator(),);

  }
}
