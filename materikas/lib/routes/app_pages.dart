// lib/routes/app_pages.dart
import 'package:get/get.dart';
import '../features/authentication/presentation/pages/splash_screen.dart';
import '../features/authentication/presentation/pages/login_page.dart';
import '../features/home/presentation/pages/home_page.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/splash/bindings/splash_binding.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
