import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app/models/products.dart';
import 'package:online_shop_app/screens/details/widget/body.dart';

import '../../../const/constants.dart';
import '../widget/local_notification.dart';

class Details extends StatefulWidget {
  const Details({Key? key,required this.product}) : super(key: key);
final Product product;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  void initState() {
  NotificationApi().initNotification();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.product.color,
         appBar: buildAppBar(),
         body: Body(product: widget.product,),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: widget.product.color,
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