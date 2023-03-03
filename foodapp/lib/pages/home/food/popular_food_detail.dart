import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/app_column.dart';
import 'package:foodapp/widgets/app_icon.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/exandble_text_widget.dart';
import 'package:foodapp/widgets/icon_and_text_widget.dart';
import 'package:foodapp/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
            width: double.maxFinite,
            height: Dimensions.popularFoosImgSize,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage(
                  "assets/image/food1.png"
                ) )
            ),
            )
            ),
            //icon widget
           Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(icon: Icons.arrow_back_ios),
              AppIcon(icon: Icons.shopping_cart_checkout_outlined)
            ],
           )),
           //introductin to food
           Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoosImgSize-20,
            child: Container(
            padding: EdgeInsets.only(left: Dimensions.width20, right:Dimensions.width20,top: Dimensions.height20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20),
                topRight: Radius.circular(Dimensions.radius20)
              ),
              color: Colors.white,
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                AppColumn(text: "CHINESE SIDE"),
              SizedBox(height:Dimensions.height20),
              BigText(text: "Introduce"),
               SizedBox(height:Dimensions.height20),
              Expanded(
                child:SingleChildScrollView(
                  child:ExpandableTextWidget(text: " Svit canteeeen app serves tasty food Svit canteeeen app serves tasty foodSvit canteeeen app serves tasty foodSvit canteeeen app serves tasty foodSvit canteeeen app serves tasty foodSvit canteeeen app serves tasty food hi my name is neel hi my name is neeel hi my name is neel hi my name is neel" ,)
              )
              )
              ],
           ))
           ),
          
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
           color: Colors.grey,
          borderRadius: BorderRadius.only(
           
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2) 
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left:Dimensions.width20,right: Dimensions.width20 ),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: Colors.black,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add,color: Colors.black)
                ],
              ) ,
            ),
            Container(
               padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left:Dimensions.width20,right: Dimensions.width20 ),
              child: BigText(text: "\$10 | Add to cart", color: Colors.black,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}

 