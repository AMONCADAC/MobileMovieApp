import 'package:flutter/material.dart';
import 'package:mobile_movie_app/app/ui/pages/home/widget/estados.dart';

class EstadosList extends StatelessWidget {
  const EstadosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView(
          children: [
            Estados(),
            Estados(),
            Estados(),
            Estados(),
            Estados(),
            Estados(),
            Estados(),
          ],
        ),
      ),
    );
  }
}
