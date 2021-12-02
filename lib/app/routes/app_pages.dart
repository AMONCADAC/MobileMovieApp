import 'package:get/get.dart';
import 'package:mobile_movie_app/app/bindings/carga_binding.dart';
import 'package:mobile_movie_app/app/bindings/login_binding.dart';
import 'package:mobile_movie_app/app/bindings/signin_binding.dart';
import 'package:mobile_movie_app/app/ui/pages/carga_page.dart';
import 'package:mobile_movie_app/app/ui/pages/home_page.dart';
import 'package:mobile_movie_app/app/ui/pages/login_page.dart';
import 'package:mobile_movie_app/app/ui/pages/signin_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      transition: Transition.native,
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.CARGA,
      page: () => CargaPage(),
      transition: Transition.native,
      binding: CargaBinding(),
    ),
    GetPage(
      name: Routes.SIGNIN,
      page: () => SigninPage(),
      transition: Transition.native,
      binding: SigninBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      transition: Transition.native,
    ),
  ];
}
