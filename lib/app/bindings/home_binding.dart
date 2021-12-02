import 'package:get/get.dart';
import 'package:mobile_movie_app/app/controllers/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController);
  }
}
