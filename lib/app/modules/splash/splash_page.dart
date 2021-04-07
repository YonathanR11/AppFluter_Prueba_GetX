import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mi_app/app/modules/splash/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              OutlinedButton(
                  onPressed: () {
                    _.goTohome();
                  },
                  child: Text('Home')),
              OutlinedButton(
                  onPressed: () {
                    _.goToLogin();
                  },
                  child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
