import 'package:flutter/cupertino.dart';
import 'package:online_shop_app/const/constants.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.id,
      required this.title,
      required this.image,
      required this.description,
      required this.price,
      required this.size,
      required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      image: "assets/images/kindpng_7228623.png",
      description: kdescription,
      price: 234,
      size: 12,
      color: const Color(0xFF3D83AE)),
  Product(
      id: 2,
      title: "Slider Bag",
      image: "assets/images/kindpng_1942124.png",
      description: kdescription,
      price: 234,
      size: 8,
      color: Color.fromARGB(255, 114, 57, 98)),
  Product(
      id: 3,
      title: "Office Code",
      image: "assets/images/kindpng_1942203.png",
      description: kdescription,
      price: 234,
      size: 8,
      color: const Color(0xFFFB7883)),
  Product(
      id: 4,
      title: "Office Code",
      image: "assets/images/kindpng_1618723.png",
      description: kdescription,
      price: 234,
      size: 8,
      color: const Color(0xFFAEAEAE)),
      Product(
      id: 5,
      title: "Office Code",
      image: "assets/images/kindpng_6962560.png",
      description: kdescription,
      price: 234,
      size: 8,
      color: const Color(0xFFE6B398)),
];
