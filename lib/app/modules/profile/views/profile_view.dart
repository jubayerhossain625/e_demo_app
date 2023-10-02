import 'package:e_demo_app/app/modules/profile/views/profile_card.dart';
import 'package:e_demo_app/app/widgets/k_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/kText.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:  KText(text:'My Profile',fontSize: 18,fontWeight: FontWeight.bold,),
        centerTitle: true,
      ),
      body: ListView(
        children:  [
          const ProfileCard(),
          const SizedBox(height: 10,),
          KCard(child: Row(
            children: [
              const Icon(Icons.shopping_bag_outlined),const SizedBox(width: 5,),
              KText(text:'Orders Check',fontSize: 18,fontWeight: FontWeight.w700,),
             const Spacer(), const Icon(Icons.arrow_forward_ios,color:Colors.grey,size: 24,),
            ],
          )),
          KCard(child: Row(
            children: [
              const Icon(Icons.history),const SizedBox(width: 5,),
              KText(text:'History',fontSize: 18,fontWeight: FontWeight.w700,),
              const Spacer(), const Icon(Icons.arrow_forward_ios,color:Colors.grey,size: 24,),
            ],
          )),
          KCard(child: Row(
            children: [
              const Icon(Icons.location_on_outlined),const SizedBox(width: 5,),
              KText(text:'Delivery Info',fontSize: 18,fontWeight: FontWeight.w700,),
              const Spacer(), const Icon(Icons.arrow_forward_ios,size: 24,color:Colors.grey,),
            ],
          )),
          KCard(child: Row(
            children: [
              const Icon(Icons.account_circle_outlined),const SizedBox(width: 5,),
              KText(text:'Account',fontSize: 18,fontWeight: FontWeight.w700,),
              const Spacer(), const Icon(Icons.arrow_forward_ios,size: 24,color:Colors.grey,),
            ],
          )),

          KCard(child: Row(
            children: [
              const Icon(Icons.ac_unit_sharp),const SizedBox(width: 5,),
              KText(text:'Term & Condition',fontSize: 18,fontWeight: FontWeight.w700,),
              const Spacer(), const Icon(Icons.arrow_forward_ios,size: 24,color:Colors.grey,),
            ],
          )),
          GestureDetector(
            onTap: (){
              Get.offAllNamed(Routes.SPLASH);
            },
            child: KCard(child: Row(
              children: [
                const Icon(LineIcons.alternateSignOut,),const SizedBox(width: 5,),
                KText(text:'LogOut',fontSize: 18,fontWeight: FontWeight.w700,),
              ],
            )),
          ),
          const SizedBox(height: 30,),
          Align(alignment: Alignment.center,child: KText(text: "Join us social Media",),),
          const SizedBox(height: 10,),
           const Row(
            mainAxisAlignment:MainAxisAlignment.center,
          children: [
            KCard(child: Icon(Icons.facebook,color: Colors.blueAccent,)),
            KCard(child: Icon(LineIcons.instagram,color: Colors.pink,)),
            KCard(child: Icon(LineIcons.twitter,color: Colors.blueAccent,)),
          ],
        )
        ],
      )
    );
  }
}
