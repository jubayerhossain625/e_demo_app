import 'package:e_demo_app/app/widgets/kText.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/k_card.dart';

class CostCard extends StatelessWidget {
  const CostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return KCard(
      radius: 0,
      child: Column(
        children: [
          Row(
            children: [
              KText(text: "SubTotal(3 items)"),
              const Spacer(),
              KText(text: "720 ৳ "),
            ],
          ),
          Row(
            children: [
              KText(text: "Delivery Fee"),
              const Spacer(),
              KText(text: "65 ৳ "),
            ],
          ),

          Row(
            children: [
              KText(text: "Promo-code offers"),
              const Spacer(),
              KText(text: "-65 ৳ ",fontWeight: FontWeight.bold,),
            ],
          ),
          const Divider(color: Colors.black,),
          Row(
            children: [
              KText(text: "Total",fontSize: 16,fontWeight: FontWeight.bold,),
              const Spacer(),
              KText(text: "720 ৳ ",fontSize: 16,fontWeight: FontWeight.bold,),
            ],
          ),

        ],
      ),
    );
  }
}
