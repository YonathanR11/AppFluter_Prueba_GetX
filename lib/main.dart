import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mi_app/app/modules/splash/splash_binding.dart';
import 'package:mi_app/app/modules/splash/splash_page.dart';
import 'package:mi_app/app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
    );
  }
}
