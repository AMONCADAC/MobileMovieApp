import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_movie_app/app/controllers/signin_controller.dart';

class SigninPage extends GetView<SigninController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.asset(
                    'assets/images/mobile_movie_letras.png',
                    height: 120.0,
                    width: 300.0,
                  ),
                ),
                Center(
                    child: Text(
                  'Registro de usuario',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 15.0,
                ),
                _usernameTextField(),
                SizedBox(
                  height: 15.0,
                ),
                _userTextField(),
                SizedBox(
                  height: 15,
                ),
                _passwordTextField(),
                SizedBox(
                  height: 25.0,
                ),
                _bottonLogin(),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  child: Text('Inicia sesion',
                      style: TextStyle(color: Colors.red, fontSize: 15)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _usernameTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            icon: Icon(
              Icons.person,
              color: Colors.red,
            ),
            hintText: 'Username',
            labelText: 'Username',
            labelStyle: TextStyle(color: Colors.black),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(
              Icons.email,
              color: Colors.red,
            ),
            hintText: 'ejemplo@correo.com',
            labelText: 'Correo electronico',
            labelStyle: TextStyle(color: Colors.black),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: Colors.red,
            ),
            hintText: 'Contraseña',
            labelText: 'Contraseña',
            labelStyle: TextStyle(color: Colors.black),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: Text(
            'Registarse',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10.0,
        color: Colors.red,
        onPressed: () {
          Navigator.pushNamed(context, 'login');
        },
      );
    });
  }
}
