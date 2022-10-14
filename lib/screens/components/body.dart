import 'package:flutter/material.dart';
import 'package:online_shop_app/const/constants.dart';
import 'package:online_shop_app/models/products.dart';
import 'package:online_shop_app/screens/details/product_details/product_details.dart';
import 'package:online_shop_app/screens/widget/categories.dart';

import '../widget/item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text("Women",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                  )),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: kDefaultPadding),
              itemBuilder: (context, index) => ItemCard(
                press: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>  Details(product: products[index],),
                )),
                product: products[index],
              ),
            ),
          ),
        )
      ],
    );
  }
}
