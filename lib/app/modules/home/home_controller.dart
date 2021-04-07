import 'package:get/get.dart';
import 'package:mi_app/app/data/model/personaje.dart';
import 'package:mi_app/app/data/repository/personaje_repository.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  final PersonajeRepository _personajeRepository;
  int page = 1;

  HomeController(this._personajeRepository);

  // @override
  // void onReady() {
  //   urlImages.add(null);
  //   _init();
  // }

  // _init() async {
  //   try {
  //     Personaje personaje = await _personajeRepository.listPersonajes(1);
  //     print(personaje.results[0].image);

  //     urlImages = personaje.results;
  //     print("✅ urlImages: $urlImages");
  //   } catch (e) {
  //     print("❌ Error: $e");
  //   }
  // }
  //

  // void showNombre(String nombre) {
  //   Get.snackbar('Personaje', nombre);
  // }

  Future<List<Result>> getListaPersonajes() async {
    try {
      List<Result> personajes = [];
      for (int i = 1; i < 34; i++) {
        List<Result> res =
            await _personajeRepository.listPersonajesPrincipal(i);
        personajes.addAll(res);
      }
      return personajes;
    } catch (e) {
      print("❌ Error: $e");
    }
  }
}
