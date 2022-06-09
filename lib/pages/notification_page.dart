import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mental_health_app/widgets/text_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: OutlinedButton(
            onPressed: () {
              Get.back();
            },
            child: MyTextWidget(
              text: Get.arguments['name'],
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
