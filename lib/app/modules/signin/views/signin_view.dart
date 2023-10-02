import 'package:e_demo_app/app/widgets/buttonWidget.dart';
import 'package:e_demo_app/app/widgets/cFormField.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../../generated/assets.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/kText.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: Get.width * 0.15,
              ),
              child: Lottie.asset(Assets.lottieLogin, height: 300, width: 300),
            ),
            KText(
              text: 'AMAR BAZAR',
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.brown,
            ),
            const SizedBox(
              height: 30,
            ),
            cFormField(
              titleText: "Phone",
              hintText: "015",
              textInputType: TextInputType.phone,
              prefixIcon: const Icon(Icons.phone),
            ),
            const SizedBox(
              height: 20,
            ),
            cFormField(
              titleText: "PIN",
              hintText: "* * * *",
              textInputType: TextInputType.phone,
              prefixIcon: const Icon(Icons.key),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: KText(
                      text: "Forget pin? ",
                      color: Colors.red,fontWeight: FontWeight.w400,
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ButtonWidget(
              height: 40,
              width: Get.width,
              onTap: () {
                Get.offAllNamed(Routes.HOME);
              },
              widget: KText(
                text: "Login",
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              children: [
                const Spacer(),
                KText(text: "Don't have account?"),
                const Spacer(),
                GestureDetector(
                  onTap: (){  Get.offAllNamed(Routes.SIGNUP);},
                    child: KText(text: "Register",color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w700,)),
                const Spacer(),
              ],
            )

          ],
        ),
          ),
        ));
  }
}
