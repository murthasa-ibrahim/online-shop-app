
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:online_shop_app/screens/details/widget/local_notification.dart';

import '../../../const/constants.dart';
import '../../../models/products.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 58,
            margin:const  EdgeInsets.only(right: kDefaultPadding),
            decoration: BoxDecoration(
                border: Border.all(color: product.color),
                borderRadius: BorderRadius.circular(18)),
            child: Icon(
              Icons.add_shopping_cart_sharp,
              color: product.color,
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: product.color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          12), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    NotificationApi.showNotification(
                      title: "Product ordered successffully",
                      body: "Your order ${product.title} is conformed",
                      payload: "mur.abs"
                    );
                  },
                  child: Text(
                    "Buy Now".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ],
      ),
    );
  }
}


