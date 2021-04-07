import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mi_app/app/modules/home/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('HomePage'),
        ),
      ),
    );
  }
}
