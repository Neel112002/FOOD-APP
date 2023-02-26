import 'package:get/get.dart';
class Dimensions {
  static double screenHeight= Get.context!.height;
  static double screenWidth= Get.context!.width;


//852/220=3.87;
  static double pageViewContainer=screenHeight/3.87;
  static double pageViewTextContainer=screenHeight/7.1;
    static double pageView=screenHeight/2.66;

    //dyamnic height padding and margin 
    static double height10=screenHeight/85.2;
    static double height20=screenHeight/42.6;
    static double height15=screenHeight/56.8;
    static double height45=screenHeight/18.9;

//dynamic width padding and margin 
    static double width10=screenHeight/85.2;
    static double width20=screenHeight/42.6;
    static double widht15=screenHeight/56.8;
    static double widht30=screenHeight/28.4;
    static double widht45=screenHeight/18.9;


    static double font20 = screenHeight/42.6;

    //radius
    static double radius20 = screenHeight/42.2;
    static double radius30 = screenHeight/28.4;
    static double radius15 = screenHeight/56.8;

    //icon size
    static double iconSize24 = screenHeight/35.5;

    //listview size 390
    static double listViewImg= screenWidth/3.25;
    static double listViewContSize= screenWidth/3.9;

    // popular food
    static double popularFoosImgSize=screenHeight/2.41;
}

