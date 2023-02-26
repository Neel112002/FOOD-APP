import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
   AppIcon({super.key, required this.icon,
   this.backgroundColor= const Color(0xFFfcf4e4),
   this.iconColor= const Color(0xFF756D54),
   this.size=40
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}