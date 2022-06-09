import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mental_health_app/pages/home_page.dart';
import 'package:mental_health_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesClass.getHomeRoute(),
      getPages: RoutesClass.routes,
    );
  }
}

