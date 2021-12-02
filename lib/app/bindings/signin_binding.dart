import 'package:get/get.dart';
import 'package:mobile_movie_app/app/controllers/signin_controller.dart';
import 'package:mobile_movie_app/app/ui/pages/signin_page.dart';

class SigninBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SigninController);
  }
}
