import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mi_app/app/routes/app_routes.dart';

class LoginController extends GetxController {
  String _usuario = "", _password = "";
  bool loading = true;

  void onUsuarioChange(String text) {
    _usuario = text;
  }

  void onPasswordChange(String text) {
    _password = text;
  }

  void submit() {
    if (_usuario != "" && _password != "") {
      print("Usuario: $_usuario");
      print("Password: $_password");
      iniciarSesion(_usuario, _password);
      // _getFutureBool();
    } else {
      // Get.snackbar("Error", "Introduzca usuario y contraseña");
      // Get.defaultDialog( title: "Error", content: CircularProgressIndicator(), );
      Get.defaultDialog(
          title: "Error",
          content: Text("Introduzca usuario y contraseña"),
          confirm: TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("OK")));
    }
  }

  void iniciarSesion(String usuario, String password) {
    print("iniciarSesion");
    Future.delayed(Duration(seconds: 2), () {
      print("A ==>> HOME");
      Get.toNamed(AppRoutes.HOME);
    });
    print("ok");
  }

  // Future<bool> _getFutureBool() {
  //   return Future.delayed(Duration(milliseconds: 500)).then((onValue) => true);
  // }
}
