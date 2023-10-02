import 'package:e_demo_app/app/data/commonData.dart';
import 'package:e_demo_app/app/widgets/kText.dart';
import 'package:e_demo_app/app/widgets/k_card.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(top: 0,right: 0,child: KCard(
          color: Colors.orange.withOpacity(0.1),radius: 20,
            child: const Icon(Icons.edit,size: 26,color: Colors.orange,)),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              maxRadius: 52,
              backgroundColor: Colors.orange,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 50,backgroundImage: NetworkImage(Data.user)
              ),
            ),
            KText(text: "Mr. Jubayer Hossain",fontWeight:FontWeight.w600,fontSize: 18,)
          ],
        ),
      ],
    );
  }
}
