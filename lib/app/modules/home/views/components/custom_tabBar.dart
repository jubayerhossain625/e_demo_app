import 'package:e_demo_app/app/data/hardDataService.dart';
import 'package:e_demo_app/app/modules/productView/product_model.dart';
import 'package:e_demo_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/productCard.dart';
import '../../../productView/controllers/product_view_controller.dart';

class CustomTabBarItems extends StatefulWidget {
  const CustomTabBarItems({super.key});

  @override
  State<CustomTabBarItems> createState() => _CustomTabBarItemsState();
}

class _CustomTabBarItemsState extends State<CustomTabBarItems> {
  /// List of Tab Bar Item
  List<String> items = [
    "Home",
    "Explore",
    "Search",
    "Feed",
    "Post",
    "Activity",
    "Setting",
    "Profile",
  ];

  /// List of body icon
  List<IconData> icons = [
    Icons.screen_rotation_alt,
    Icons.watch,
    Icons.tv_sharp,
    Icons.smartphone,
    Icons.headphones,
    Icons.speaker,
    Icons.laptop_mac
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    final ProductViewController controller = Get.put(ProductViewController());
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Column(
        children: [
          /// CUSTOM TABBAR
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: icons.length,
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
                          width: 80,
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
                          child: Center(
                            child: Icon(icons[index],
                                color: current == index
                                    ? Colors.black
                                    : Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),

          /// MAIN BODY
          Flexible(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.78,mainAxisSpacing: 5,

                  ),
                  itemCount: HardDataService().getAllProduct.length,
                  itemBuilder: (context, index) {
                     ProductModel a = HardDataService().getAllProduct[index];
                    return GestureDetector(
                        onTap: (){
                          Get.toNamed(Routes.PRODUCT_VIEW,arguments: a);
                          controller.getBanner(a);
                        },
                        child: ProductCard(product:a ));
                  }))
        ],
      ),
    );
  }
}
