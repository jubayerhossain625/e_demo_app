import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../generated/assets.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/kText.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Get.offAllNamed(Routes.SIGNIN);
    });
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Lottie.asset(Assets.lottieSplashLottie),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: Get.height * 0.2),
                  child: KText(
                    text: 'AMAR BAZAR',
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
