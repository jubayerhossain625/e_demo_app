import 'package:e_demo_app/app/modules/home/views/components/bannerCard.dart';
import 'package:e_demo_app/app/routes/app_pages.dart';
import 'package:e_demo_app/app/widgets/kText.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import 'components/custom_tabBar.dart';

class BodyHomeView extends GetView {
  const BodyHomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.black12
                    ),
                    child: IconButton(
                        onPressed: (){}, icon: const Icon(Icons.notifications,color: Colors.red,size: 25,)),
                  ),
                  const SizedBox(width: 10,),
                  KText(text: ""),
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    height: 40,width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.black12
                    ),
                    child: IconButton(
                        onPressed: (){
                          Get.toNamed(Routes.WISH_LIST);
                        }, icon: const Icon(Icons.favorite,color: Colors.red,size: 26,)),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const BannerCard(),
              const SizedBox(height: 20,),
              Row(children: [
                KText(text: 'Top categories',fontWeight: FontWeight.w700,fontSize: 15,),
                const Spacer(),
                KText(text: 'SEE ALL',fontWeight: FontWeight.w400,fontSize: 13,color: Colors.orange,),
              ],),
              const SizedBox(height: 10,),
              const Expanded(child: CustomTabBarItems())

            ],
          ),
        ),
      ),
    );
  }
}
