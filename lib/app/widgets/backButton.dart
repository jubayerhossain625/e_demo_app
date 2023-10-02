import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'iconButton.dart';

Widget backButton({bool? isLeftPaddingOn = false}) {

  return Padding(
    padding: EdgeInsets.only(left: isLeftPaddingOn == true ? 10 : 0),
    child: iconButton(
      onTap: () => Get.back(),
      // icons: Icons.arrow_back,
      icons: Icons.arrow_back,
      iconSize: 20,
      iconPadding: const EdgeInsets.only(right: 4),
      withOutOpacityBgColor: Colors.white,
      singleIconColor: Colors.black,
    ),
  );
}