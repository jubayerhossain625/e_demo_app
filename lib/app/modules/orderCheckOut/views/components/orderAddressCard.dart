import 'package:e_demo_app/app/routes/app_pages.dart';
import 'package:e_demo_app/app/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderAddressCard extends StatelessWidget {
  const OrderAddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.grey[200]
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KText(text: "Delivery: Md. Jubayer Hossain",fontWeight: FontWeight.bold,fontSize: 16,),
          Row(
            children: [
              Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KText(text: "Proshadpur, Manda, Naogaon, Rajshahi\n01617176972",fontWeight: FontWeight.w400,fontSize: 16,),
                  KText(text: "ahomedzobayer@gmail.com",fontWeight: FontWeight.w400,fontSize: 16,),

                ],
              ),
              const Spacer(),
             GestureDetector(
                 onTap: (){
                   Get.toNamed(Routes.DELIVERY_ADDRESS);
                   },
                 child: const Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,))
            ],
          ),
        ],
      ),
    );
  }
}
