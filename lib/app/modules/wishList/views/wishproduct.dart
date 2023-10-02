import 'package:e_demo_app/app/modules/productView/product_model.dart';
import 'package:e_demo_app/app/widgets/buttonWidget.dart';
import 'package:e_demo_app/app/widgets/kText.dart';
import 'package:e_demo_app/app/widgets/k_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/wish_list_controller.dart';


class WishProduct extends StatefulWidget {
  const WishProduct({super.key, required this.product});
  final ProductModel product;

  @override
  State<WishProduct> createState() => _WishProductState();
}

class _WishProductState extends State<WishProduct> {
  @override
  Widget build(BuildContext context) {
    final WishListController wishListController = Get.put(WishListController());

    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KCard(color: Colors.orange.withOpacity(0.1),
                child: Image.network(widget.product.thumbnail.toString(),height: 90,width: 100,)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical: 8),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  KText(text: widget.product.title,fontWeight: FontWeight.bold,fontSize: 15,),
                  Row(
                    children: [
                      KText(text: "Review(",fontWeight: FontWeight.w400,fontSize: 15,),
                      const Icon(Icons.star_rate,color: Colors.orange,),
                      KText(text: "${widget.product.rating})",fontWeight: FontWeight.bold,fontSize: 15,),
                    ],
                  ),
                  KText(text: "৳${widget.product.price}",fontWeight: FontWeight.bold,fontSize: 17,),
                  ButtonWidget(onTap: (){

                  }, height: 30, bgColor: Colors.orange,radius: 8,
                    widget: KText(text: "Add to Card",fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white,),
                  ),
                ],
              ),
            )

          ],
        ),
         Positioned(top: 0,right: 0,child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              setState(() {
                wishListController.remove(widget.product);
              });

            },
              child: const Icon(Icons.delete_forever,color: Colors.red,)),
        ),)
      ],
    );


  }
}
