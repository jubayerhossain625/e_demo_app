import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../generated/assets.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/buttonWidget.dart';
import '../../../widgets/cFormField.dart';
import '../../../widgets/kText.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
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
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: Get.width * 0.1,
                  ),
                  child: Lottie.asset(Assets.lottieSplashLottie, height: 210, width: 210),
                ),
                KText(
                  text: 'Create an Your Account',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.brown,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    cFormField(width: Get.width*0.445,
                      titleText: "First Name",
                      hintText: "Mr.Jubayer",
                      textInputType: TextInputType.name,
                    ),
                   const SizedBox(width: 20,),
                    cFormField( width:Get.width*0.445,
                      titleText: "Last Name",
                      hintText: "Hossain",
                      textInputType: TextInputType.name,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                cFormField(
                  titleText: "Phone",
                  hintText: "015",
                  textInputType: TextInputType.phone,
                  prefixIcon: const Icon(Icons.phone),
                ),
                const SizedBox(
                  height: 10,
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
                const SizedBox(
                  height: 15,
                ),
                ButtonWidget(
                  height: 40,
                  width: Get.width,
                  onTap: () {},
                  widget: KText(
                    text: "Register",
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
                    KText(text: "Already have an account?"),
                    const Spacer(),
                    GestureDetector(
                        onTap: (){
                          Get.offAllNamed(Routes.SIGNIN);
                        },
                        child: KText(text: "Login",color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w700,)),
                    const Spacer(),
                  ],
                )

              ],
            ),
          ),
        ));
  }
}
