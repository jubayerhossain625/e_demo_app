import 'package:e_demo_app/app/data/hardDataService.dart';
import 'package:e_demo_app/app/modules/productView/product_model.dart';
import 'package:get/get.dart';

import '../modules/deliveryAddress/bindings/delivery_address_binding.dart';
import '../modules/deliveryAddress/views/delivery_address_view.dart';
import '../modules/forget/bindings/forget_binding.dart';
import '../modules/forget/views/forget_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/myCart/bindings/my_cart_binding.dart';
import '../modules/myCart/views/my_cart_view.dart';
import '../modules/orderCheckOut/bindings/order_check_out_binding.dart';
import '../modules/orderCheckOut/views/order_check_out_view.dart';
import '../modules/productView/bindings/product_view_binding.dart';
import '../modules/productView/views/product_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/wishList/bindings/wish_list_binding.dart';
import '../modules/wishList/views/wish_list_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.FORGET,
      page: () => const ForgetView(),
      binding: ForgetBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_VIEW,
      page: () => ProductView(),
      binding: ProductViewBinding(),
      arguments: HardDataService().getAllProduct.first
    ),
    GetPage(
      name: _Paths.MY_CART,
      page: () => const MyCartView(),
      binding: MyCartBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_CHECK_OUT,
      page: () => const OrderCheckOutView(),
      binding: OrderCheckOutBinding(),
    ),
    GetPage(
      name: _Paths.DELIVERY_ADDRESS,
      page: () => const DeliveryAddressView(),
      binding: DeliveryAddressBinding(),
    ),
    GetPage(
      name: _Paths.WISH_LIST,
      page: () => const WishListView(),
      binding: WishListBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
