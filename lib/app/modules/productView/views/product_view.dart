import 'package:e_demo_app/app/modules/productView/product_model.dart';
import 'package:e_demo_app/app/widgets/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

import '../../../widgets/kText.dart';
import '../../home/views/components/bannerCard.dart';
import '../controllers/product_view_controller.dart';

class ProductView extends GetView<ProductViewController> {
   ProductView({Key? key}) : super(key: key);

  final double _userRating = 3.0;
  final bool _isVertical = false;
   final ProductModel args = Get.arguments;
  IconData? _selectedIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: Get.height,width: Get.width,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            scrollDirection: Axis.vertical,

            children: [
              const Row(
                children: [
                   BackButton(color: Colors.black,),
                  Spacer(),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(
                height: 200,width: Get.width,
                child: const ProductImages(),
              ),
              const SizedBox(height: 12,),
              Expanded(
                child: SizedBox(
                width: Get.width,
                //  color: Colors.orange.withOpacity(0.3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KText(text: args.title,fontSize: 18,fontWeight: FontWeight.w700,),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating: _userRating,
                            itemBuilder: (context, index) => Icon(
                              _selectedIcon ?? Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 40.0,
                            unratedColor: Colors.amber.withAlpha(50),
                            direction: _isVertical ? Axis.vertical : Axis.horizontal,
                          ),
                          const SizedBox(width: 10,),
                          KText(text: '(4500 Reviews)',fontSize: 20,fontWeight: FontWeight.w400,),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          KText(text: "৳220",fontSize: 18,fontWeight: FontWeight.bold,),
                          const SizedBox(width: 5,),
                          KText(text: "৳320",fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54,),
                          const Spacer(),
                          KText(text: "Not available",fontSize: 15,fontWeight: FontWeight.w600,),

                        ],
                      ),
                      const SizedBox(height: 20,),
                      KText(text: "About",fontSize: 15,fontWeight: FontWeight.bold,),
                      const SizedBox(height: 5,),
                      KText(text: "A simple yet fully customizable ratingbar for flutter which also include a rating bar indicator, supporting any fraction of rating.",
                        fontSize: 15,fontWeight: FontWeight.w400,
                        maxLines: 20,letterSpacing: 2,
                        ),
                      const SizedBox(height: 200,),
                      ButtonWidget(onTap: (){},
                        height: 40,width: Get.width,radius: 12,
                        widget: KText(text:"Add to cart",fontSize: 16,fontWeight: FontWeight.w400,),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      )
    );
  }
}
