import 'package:flutter/material.dart';

import '../../../const/constants.dart';
import '../../../models/products.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(product.description,style:const TextStyle(height: 1.5),),
    );
  }
}