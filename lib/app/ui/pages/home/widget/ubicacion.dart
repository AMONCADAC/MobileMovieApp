import 'package:flutter/material.dart';

class Ubication extends StatelessWidget {
  const Ubication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
    );

    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
            height: 20,
          ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          width: size.width * 0.8,
          child: Text('Cargando mapa con la ubicacion del usuario...'),
          decoration: boxDecoration,
        ),

        SizedBox(
          height: 10,
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: size.width * 0.2,
          child: Column(
            children: [
              Icon(Icons.account_circle_rounded, size: 40,),
              Text('usuario')
            ],)
          
        ),
      ],
    );
  }
}
