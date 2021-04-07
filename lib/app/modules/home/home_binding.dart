import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mi_app/app/data/provider/personaje_api.dart';
import 'package:mi_app/app/data/repository/personaje_repository.dart';
import 'package:mi_app/app/modules/home/home_controller.dart';
import 'package:mi_app/app/util/constants.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    final dio = Dio(BaseOptions(baseUrl: Constants.BASE_URL));
    final api = PersonajeAPI(dio);
    final repository = PersonajeRepository(api);
    Get.lazyPut(() => HomeController(repository));
  }
}
