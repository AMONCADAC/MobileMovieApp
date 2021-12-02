import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_movie_app/app/bindings/carga_binding.dart';
import 'package:mobile_movie_app/app/bindings/home_binding.dart';
import 'package:mobile_movie_app/app/ui/themes/dart_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.CARGA,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    initialBinding: CargaBinding(),
    getPages: AppPages.pages,
  ));
}
