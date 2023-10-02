import 'package:e_demo_app/app/widgets/buttonWidget.dart';
import 'package:e_demo_app/app/widgets/cFormField.dart';
import 'package:e_demo_app/app/widgets/k_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/kText.dart';
import '../controllers/delivery_address_controller.dart';

class DeliveryAddressView extends GetView<DeliveryAddressController> {
  const DeliveryAddressView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const BackButton(
            color: Colors.black,
          ),
          title: KText(
            text: 'Delivery Information',
            fontSize: 18,
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            KCard(
                radius: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    KText(
                      text: 'Your Details',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.0,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    cFormField(
                        hintText: 'Md. Jubayer Hossain',
                        filledColor: Colors.white,
                        height: 40,
                        prefixIcon: const Icon(Icons.account_circle_outlined)),
                    const SizedBox(
                      height: 8,
                    ),
                    cFormField(
                        hintText: '01617513035',
                        filledColor: Colors.white,
                        height: 40,
                        prefixIcon: const Icon(Icons.phone)),
                    const SizedBox(
                      height: 8,
                    ),
                    cFormField(
                        hintText: 'abc@gmail.com',
                        filledColor: Colors.white,
                        height: 40,
                        prefixIcon: const Icon(Icons.email)),
                  ],
                )),
            const SizedBox(
              height: 5,
            ),
            KCard(
                radius: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    KText(
                      text: 'Address Details',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.0,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    cFormField(
                      titleText: 'Division',
                      hintText: 'Rajshahi',
                      filledColor: Colors.white,
                      height: 40,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    cFormField(
                      titleText: 'City',
                      hintText: 'Naogaon',
                      filledColor: Colors.white,
                      height: 40,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    cFormField(
                      titleText: 'Police Station',
                      hintText: 'Manda',
                      filledColor: Colors.white,
                      height: 40,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    cFormField(
                      titleText: 'Post-Code',
                      hintText: '6510',
                      filledColor: Colors.white,
                      height: 40,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    cFormField(
                      titleText: 'Area',
                      hintText: 'ProshadPur',
                      filledColor: Colors.white,
                      height: 40,
                    ),
                  ],
                )),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ButtonWidget(
                radius: 18,bgColor: Colors.orange,
                onTap: () {},
                widget: KText(
                  text: 'Save',fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white,
                ),
              ),
            )
          ],
        ));
  }
}
