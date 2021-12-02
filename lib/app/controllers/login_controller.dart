import 'package:get/get.dart';
import 'package:mobile_movie_app/app/routes/app_pages.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 4), () {
      Get.toNamed(Routes.SIGNIN);
    });
    super.onInit();
  }
}
