import 'package:flutter/material.dart';
import 'package:online_shop_app/const/constants.dart';
import 'package:online_shop_app/models/products.dart';
import 'package:online_shop_app/screens/widget/categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
                    product: products[index],
                  )),
        ))
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, this.function, required this.product})
      : super(key: key);
  final Product product;
  final Function? function;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(product.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            product.title,
            style: const TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          '\$ ${product.price}',
          style:const  TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
