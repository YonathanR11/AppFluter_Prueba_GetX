import 'package:get/route_manager.dart';
import 'package:mi_app/app/modules/home/home_binding.dart';
import 'package:mi_app/app/modules/home/home_page.dart';
import 'package:mi_app/app/modules/login/login_binding.dart';
import 'package:mi_app/app/modules/login/login_page.dart';
import 'package:mi_app/app/modules/splash/splash_binding.dart';
import 'package:mi_app/app/modules/splash/splash_page.dart';
import 'package:mi_app/app/routes/app_routes.dart';

class AppPages {
  static final pages = [
    // GetPage(name: 'HomePage', page: HomePage, binding: binding),
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
