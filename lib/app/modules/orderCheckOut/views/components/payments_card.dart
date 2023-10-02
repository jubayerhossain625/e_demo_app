import 'package:e_demo_app/app/data/commonData.dart';
import 'package:e_demo_app/app/widgets/kText.dart';
import 'package:e_demo_app/app/widgets/k_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
enum Gender { cash, onpay }

class PaymentsCard extends StatefulWidget {
  const PaymentsCard({super.key});

  @override
  State<PaymentsCard> createState() => _PaymentsCardState();
}

class _PaymentsCardState extends State<PaymentsCard> {
   Gender selectedGender=Gender.cash;
  List<String> data = [
    'https://i.ibb.co/T8f50ST/bkash.png',
   'https://i.ibb.co/vXsdwPk/rokect.png',
    'https://i.ibb.co/zrncKSj/nagod.png',
    'https://i.ibb.co/hZ9mFM4/visa.png',
  ];

  int current = 0;

  void _handleGenderChange(Gender? value) {
    setState(() {
      selectedGender = value!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return KCard(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KText(text: "Payments",fontSize: 16,fontWeight: FontWeight.w600,),
       SizedBox(
         height: 40,width: Get.width,
         child: Row(
           children: [
             Radio<Gender>(
               value: Gender.cash,
               groupValue: selectedGender,
               onChanged: _handleGenderChange,
             ),
             KText(text: "Cash On Delivery"),
             const SizedBox(width: 20), // Add spacing between radio buttons
             Radio<Gender>(
               value: Gender.onpay,
               groupValue: selectedGender,
               onChanged: _handleGenderChange,
             ),
             KText(text: "On Pay"),
           ],
         )
       ),

        selectedGender==Gender.onpay ? SizedBox(
          width: double.infinity,
          height: 75,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: data.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.all(5),
                        width: 75,
                        height: 40,
                        decoration: BoxDecoration(
                          color: current == index
                              ? Colors.white70
                              : Colors.white54,
                          borderRadius: current == index
                              ? BorderRadius.circular(15)
                              : BorderRadius.circular(10),
                          border: current == index
                              ? Border.all(
                              color: Colors.deepPurpleAccent, width: 2)
                              : null,
                        ),
                        child: Image.network(data[index]),
                      ),
                    ),
                  ],
                );
              },),
        ):Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(
              image:NetworkImage(Data.cashOn,),fit: BoxFit.fill
            )
          ),
          height: 100,

        )

      ],
    ));
  }
}
