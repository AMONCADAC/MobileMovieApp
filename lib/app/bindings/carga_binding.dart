import 'package:get/get.dart';
import 'package:mobile_movie_app/app/controllers/carga_controller.dart';

class CargaBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CargaController());
  }
}
