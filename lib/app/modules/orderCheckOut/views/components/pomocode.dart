import 'package:e_demo_app/app/widgets/cFormField.dart';
import 'package:e_demo_app/app/widgets/kText.dart';
import 'package:flutter/material.dart';

class PromoCode extends StatelessWidget {
  const PromoCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.grey[200]
      ),
      child: Row(
        children: [
        KText(text: "PromoCode",fontWeight: FontWeight.bold,fontSize: 16,),
          const Spacer(),
          cFormField(
            height: 30,
            width: 120,maxLength: 7,
            hintText: "code",maxLines: 1,
            suffixIcon: Icon(Icons.upload),filledColor: Colors.white,
          ),

      ],),
    );
  }
}
