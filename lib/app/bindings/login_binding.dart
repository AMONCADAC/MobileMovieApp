import 'package:get/get.dart';
import 'package:mobile_movie_app/app/controllers/login_controller.dart';
import 'package:mobile_movie_app/app/ui/pages/login_page.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController);
  }
}
