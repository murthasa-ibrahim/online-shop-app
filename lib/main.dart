import 'package:flutter/material.dart';
import 'package:online_shop_app/const/constants.dart';
import 'package:online_shop_app/screens/home/home_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       visualDensity: VisualDensity.adaptivePlatformDensity,
       textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)
      ),

      home:const Home() ,
    );
  }
}
