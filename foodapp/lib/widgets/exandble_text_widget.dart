import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String FirstHalf;
  late String secondHalf;

  bool hiddenText=true;

double textHeight=Dimensions.screenHeight/5.63;

@override
void initState(){
  super.initState();
  if(widget.text.length>textHeight){
    FirstHalf=widget.text.substring(0,textHeight.toInt());
    secondHalf=widget.text.substring(textHeight.toInt()+1, widget.text.length);
  }else{
    FirstHalf=widget.text;
    secondHalf="";
  }
}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(size:Dimensions.font16,text: FirstHalf):Column(
      children: [
        SmallText(height:1.8,size:Dimensions.font16,text: hiddenText?(FirstHalf+"..."):(FirstHalf+secondHalf)),
        InkWell(
          onTap: () {
          setState(() {
            hiddenText=!hiddenText;
          });
          },
          child: Row(children: [
            SmallText(text: "Show more",color: Colors.black,),
            Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: Colors.black,)
          ]),
        )
      ],
      ),
    );
  }
}