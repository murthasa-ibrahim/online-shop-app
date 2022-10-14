import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app/models/products.dart';
import 'package:online_shop_app/screens/details/widget/body.dart';

import '../../../const/constants.dart';

class Details extends StatelessWidget {
  const Details({Key? key,required this.product}) : super(key: key);
final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
         appBar: buildAppBar(),
         body: Body(product: product,),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: product.color,
        elevation: 0,
        actions: [
           IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          size: 30,
        ),
         color: Colors.white,
      ),
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/add-to-cart-svgrepo-com.svg",
            color: Colors.white,
          )),
      const SizedBox(
        width: kDefaultPadding / 2,
        
      )
        ],
       );
  }
}