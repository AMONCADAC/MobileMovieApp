import 'package:get/get.dart';
import 'package:mobile_movie_app/app/routes/app_pages.dart';
import 'package:mobile_movie_app/app/ui/pages/carga_page.dart';

class CargaController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 4), () {
      Get.toNamed(Routes.LOGIN);
    });
    super.onInit();
  }
}
