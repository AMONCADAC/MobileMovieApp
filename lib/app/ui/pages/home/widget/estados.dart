import 'package:flutter/material.dart';

class Estados extends StatelessWidget {
  const Estados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.account_circle_outlined, size: 50),
            SizedBox(
              width: 5,
            ),
            Text(
              'Nombre de usuario',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          width: size.width * 0.8,
          child: Text(
              'Estado del Usuario'),
          decoration: boxDecoration,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}