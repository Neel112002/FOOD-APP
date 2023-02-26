import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/icon_and_text_widget.dart';
import 'package:foodapp/widgets/small_text.dart';
import 'package:foodapp/utils/dimensions.dart';


class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.75);
  var _currPageValue = 0.0;
  double scaleFactor = 0.8;
   
   final double _height =Dimensions.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
      print("Current page value is " + _currPageValue.toString());
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
    children:[ 
      //slider section
      Container(
      // color: Colors.red,
      height: Dimensions.pageView,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
          ),
          // ignore: unnecessary_new
          //dots
          new DotsIndicator(
             dotsCount: 5,
             position: _currPageValue,
               decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
               ),
          //Popular text
          SizedBox(height: Dimensions.height20,),
          Container(
            margin: EdgeInsets.only(left: Dimensions.widht30),
            child: Row(
              children: [
                BigText(text: "Most prefered"),
                SizedBox(width: Dimensions.width10,),
                Container(
                  margin: const EdgeInsets.only(bottom: 3),
                  child: BigText(text: ".",color: Colors.black26,),
                ),
                SizedBox(width: Dimensions.width10,),
                Container(
                 margin: const EdgeInsets.only(bottom: 2),
                 child: SmallText(text: "Food Pairing"),
                )

              ],
            ),
          ),
      //list of food and imagies
    
      ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context,index){
        return Container(
         margin: EdgeInsets.only(left: Dimensions.width20,
         right: Dimensions.widht15,
         bottom: Dimensions.height10
         ),
         child: Row(
          children: [
            //images section
            Container(
              width: Dimensions.listViewImg,
              height: Dimensions.listViewImg,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white38,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image/food2.png"
                  ))
              ),
            ),
            //text container
            Expanded(child:
            Container(
              height: Dimensions.listViewContSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius15),
                  bottomRight: Radius.circular(Dimensions.radius15)
                ),
                color: Colors.white
              ),
              child: Padding(padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                BigText(text: "SVIT CANTEEN APP FOR STUDENTS ",),
                SizedBox(height: Dimensions.height10,),
                SmallText(text: "tasty food"),
                  SizedBox(height: Dimensions.height10,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidget(
                            text: "Normal",
                            icon: Icons.circle,
                            iconColor: Colors.orange),
                        IconAndTextWidget(
                            text: "Canteen",
                            icon: Icons.location_on,
                            iconColor: Colors.blueGrey),
                        IconAndTextWidget(
                            text: "5 mins",
                            icon: Icons.access_time_filled_rounded,
                            iconColor: Colors.red)
                      ],
                    )
              ],
              ),
              ),
            )
            )
          ],
         ),
        );
      })
      
    ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } 
    else if (index == _currPageValue.floor() + 1) {
      var currScale =
          scaleFactor + (_currPageValue - index + 1) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } 
    else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } 
    else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - scaleFactor) / 2, 1);
    }

    ;
    return Transform(
      transform: matrix,
      child: Stack(children: [
        Container(
          height: Dimensions.pageViewContainer,
          margin: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: index.isEven ? Colors.blueGrey : Colors.blueAccent,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/food1.png"))),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 5))
                  ]),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height10, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Chinese side"),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 15,
                                  )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "4.5"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "34"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "comments")
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidget(
                            text: "Normal",
                            icon: Icons.circle,
                            iconColor: Colors.orange),
                        IconAndTextWidget(
                            text: "Canteen",
                            icon: Icons.location_on,
                            iconColor: Colors.blueGrey),
                        IconAndTextWidget(
                            text: "5 mins",
                            icon: Icons.access_time_filled_rounded,
                            iconColor: Colors.red)
                      ],
                    )
                  ],
                ),
              ),
            ))
      ]),
    );
  }
}

