import 'package:flutter/material.dart';
import 'package:online_shop_app/const/constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand Bag", "Jewellery", "Footwear", "Dresses"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                    color:
                        selectedIndex == index ? kTextColor : kTextLightColor,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(top: kDefaultPadding / 4),
                height: 2,
                width: 30,
                color: selectedIndex == index ? kTextColor : Colors.transparent,
              )
            ],
          ),
        ),
      );
}
