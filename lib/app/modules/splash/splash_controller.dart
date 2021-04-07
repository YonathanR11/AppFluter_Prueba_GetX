import 'package:get/get.dart';
import 'package:mi_app/app/routes/app_routes.dart';

class SplashController extends GetxController {
  goTohome() {
    print("Clic 😎");
    // Get.offNamed(AppRoutes.HOME);
    Get.toNamed(AppRoutes.HOME);
  }

  goToLogin() {
    // Get.offNamed(AppRoutes.LOGIN);
    Get.toNamed(AppRoutes.LOGIN);
  }
}
