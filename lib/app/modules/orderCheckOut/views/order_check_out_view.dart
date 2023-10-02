import 'package:e_demo_app/app/widgets/buttonWidget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/kText.dart';
import '../controllers/order_check_out_controller.dart';
import 'components/checkout_cost_card.dart';
import 'components/orderAddressCard.dart';
import 'components/payments_card.dart';
import 'components/pomocode.dart';

class OrderCheckOutView extends GetView<OrderCheckOutController> {
  const OrderCheckOutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0,
        title:  Row(
          children: [
            KText(text: 'Checkout',fontSize: 16,fontWeight: FontWeight.w600,),
            const Spacer(),
          ],
        ),
        leading: const BackButton(color: Colors.black,),
        centerTitle: true,
      ),
      body: SizedBox(
        height: Get.height,width: Get.width,
        child: ListView(
          scrollDirection: Axis.vertical,
          children:  [
            const OrderAddressCard(),
            const PromoCode(),
            const CostCard(),
            const PaymentsCard(),
            const SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: ButtonWidget(onTap: (){},bgColor: Colors.orange,height: 40,radius: 12,width: 100,
                  widget: KText(text: "Confirm",fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18,)
            ),
                ),
          ],
        ),
      )
    );
  }
}
