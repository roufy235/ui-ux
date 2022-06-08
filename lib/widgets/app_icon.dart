

import 'package:flutter/material.dart';
import 'package:mental_health_app/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color? bgColor;
  const AppIcon({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.width15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius10)),
        color: bgColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
