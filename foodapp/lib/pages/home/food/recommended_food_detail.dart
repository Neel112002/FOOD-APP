import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/widgets/app_icon.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/exandble_text_widget.dart';

import '../../../utils/dimensions.dart';

class RecommendedFooddetail extends StatelessWidget {
  const RecommendedFooddetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        
        slivers: [
          SliverAppBar(
            toolbarHeight:70 ,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.add_shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
              
              
                child: Center(child:BigText(size: Dimensions.font26,text: "Chinese side",)),
                width: double.maxFinite,
                padding:EdgeInsets.only(top: 5,bottom: 10) ,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20)
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.grey,
            expandedHeight: 300,
            flexibleSpace:FlexibleSpaceBar(background: Image.asset("assets/image/food1.png",
            width: double.maxFinite,
            fit:BoxFit.cover,
            
            ),) ,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  
                  child: ExpandableTextWidget(text: " Svit canteeeen app serves tasty food Svit canteeeen app serves tasty foodSvit canteeeen app serves tasty foodSvit canteeeen app serves tasty foodSvit canteeeen app serves tasty foodSvit canteeeen app serves tasty food hi my name is neel hi my name is neeel hi my name is neel hi my name is neel Svit canteeeen app serves tasty food Svit canteeeen app serves tasty foodSvit canteeeen app serves tasty foodSvit canteeeen app serves tasty foodSvit canteeeen app serves tasty foodSvit canteeeen app serves tasty food hi my name is neel hi my name is neeel hi my name is neel hi my name is neel"),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            )
          )
          
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding:EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child:Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                iconSize: Dimensions.iconSize24,
                iconColor: Colors.white,
              backgroundColor:Colors.grey,
              icon: Icons.remove,),

              BigText(text: "\$30.88 "+" * "+" 0", color: Colors.black, size: Dimensions.font26,),
                 AppIcon(
                iconSize: Dimensions.iconSize24,
                iconColor: Colors.white,
              backgroundColor:Colors.grey,
              icon: Icons.add,),
            ],)
          ),
          Container(
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
              child: Icon(
                Icons.favorite,
                color: Colors.red,)
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
        ],
      ),
    );
  }
}