import 'package:flutter/material.dart';
import 'package:online_shop_app/const/constants.dart';
import 'package:online_shop_app/screens/details/widget/color_and_size.dart';
import 'package:online_shop_app/screens/details/widget/product_title_with_image.dart';

import '../../../models/products.dart';
import 'add_to_cart.dart';
import 'counter_with_favbtn.dart';
import 'product_description.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: size.height * .12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      ProductDescription(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      const CounterWithFavBtn(),
                      const SizedBox(height: kDefaultPadding / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
