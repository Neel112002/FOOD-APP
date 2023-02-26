import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/home/food_page_body.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current height is "+MediaQuery.of(context).size.height.toString());
    return Scaffold(
        body: Column(children: [
      Container(
          child: Container(
        margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
        padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BigText(text: "India", color: Colors.black),
                SmallText(
                  text: "Vadodara",
                  color: Color.fromARGB(255, 0, 0, 0),
                )
              ],
            ),
            Center(
                child: Container(
              width: Dimensions.widht45,
              height: Dimensions.height45,
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: Dimensions.iconSize24,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                color: Colors.blue,
              ),
            ))
          ],
        ),
      )),
      Expanded(child: SingleChildScrollView(
        child:FoodPageBody() ,
      ))
    ]));
  }
}
