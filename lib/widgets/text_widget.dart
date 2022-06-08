import 'package:flutter/material.dart';
import 'package:mental_health_app/utils/dimensions.dart';

class MyTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  bool isBold;
  double size;
  MyTextWidget({
    Key? key,
    required this.text,
    required this.color,
    this.size = 0,
    this.isBold = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: "SofiaPro",
        fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
        fontSize: size == 0 ? Dimensions.font16 : size
      ),
    );
  }
}
