import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_movie_app/app/controllers/carga_controller.dart';

class CargaPage extends GetView<CargaController> {
  const CargaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Spacer(),
        Center(
          child: FractionallySizedBox(
            widthFactor: .6,
            child: Image.asset(
              'assets/images/mobile_movie_logo.png',
              height: 300.0,
            ),
          ),
        ),
        Spacer(),
        CircularProgressIndicator(),
        Spacer(),
        Text('Bienvenido'),
        Spacer(),
      ],
    )));
  }
}
