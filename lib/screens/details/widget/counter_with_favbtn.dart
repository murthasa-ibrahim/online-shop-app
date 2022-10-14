import 'package:flutter/material.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
              color: Color(0xFFFF6465), shape: BoxShape.circle),
          child: Image.asset("assets/images/icons8-favorite-64.png"),
        )
      ],
    );
  }
}