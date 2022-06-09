
import 'package:flutter/material.dart';
import 'package:mental_health_app/utils/dimensions.dart';
import 'package:mental_health_app/widgets/text_widget.dart';

class CardWidget extends StatelessWidget {
  final Color bgColor;
  final String text;
  const CardWidget({
    Key? key,
    required this.bgColor, required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height80,
      width: Dimensions.cardWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius15)),
        color: bgColor
      ),
      child: Center(
        child: MyTextWidget(
          text: text,
          color: Colors.white,
        ),
      ),
    );
  }
}
