import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_demo_app/app/modules/productView/product_model.dart';
import 'package:e_demo_app/app/modules/wishList/controllers/wish_list_controller.dart';
import 'package:e_demo_app/app/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/myCart/controllers/my_cart_controller.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.product});
  final ProductModel product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isCard = false;
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    final MyCartController controller = Get.put(MyCartController());
    final WishListController wishListController = Get.put(WishListController());
    final index = controller.myCart
        .firstWhereOrNull((element) => element.id == widget.product.id);
    final item = wishListController.wishList
        .firstWhereOrNull((element) => element.id == widget.product.id);
    if (index != null) {
      setState(() {
        isCard = true;
      });
    } else {
      setState(() {
        isCard = false;
      });
    }
    if (item != null) {
      setState(() {
        isFav = true;
      });
    } else {
      setState(() {
        isFav = false;
      });
    }
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
          height: 260,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.black12),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: KText(
                        text: "${widget.product.discountPercentage}% OFF",
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        final item = wishListController.wishList
                            .firstWhereOrNull(
                                (element) => element.id == widget.product.id);
                        if (item != null) {
                          setState(() {
                            isFav = false;
                            wishListController.remove(widget.product);
                            print(" delete to fav");
                          });
                        } else {
                          setState(() {

                            isFav = true;
                            wishListController.addToWishList(widget.product);
                            print(" Add to fav");
                          });
                        }
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: isFav ? Colors.orange : Colors.black,
                      )),
                ],
              ),
              Expanded(
                  child: CachedNetworkImage(
                imageUrl: widget.product.thumbnail.toString(),
              )),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                height: 55,
                width: Get.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(18),
                      bottomLeft: Radius.circular(18)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    KText(
                      text: widget.product.title.toString(),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54,
                    ),
                    Row(
                      children: [
                        KText(
                          text: "৳${widget.product.price}",
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        KText(
                          text: "৳${widget.product.price}",
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
            bottom: 2,
            right: 10,
            child: GestureDetector(
              onTap: () {
                final index = controller.myCart.firstWhereOrNull(
                    (element) => element.id == widget.product.id);

                if (index != null) {
                  setState(() {
                    print('already Added');
                    isCard = true;
                  });
                } else {
                  setState(() {
                    print('Add to Card');
                    print(index);
                    isCard = true;
                  });
                  controller.addToCard(widget.product);
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                padding: const EdgeInsets.only(top: 3.0),
                decoration: BoxDecoration(
                    color: isCard ? Colors.grey : Colors.orange,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                      topRight: Radius.circular(0),
                    )),
                child: KText(
                  text: isCard ? "added" : 'add',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ))
      ],
    );
  }
}
