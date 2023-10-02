import 'package:get/get.dart';

import '../controllers/order_check_out_controller.dart';

class OrderCheckOutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderCheckOutController>(
      () => OrderCheckOutController(),
    );
  }
}
