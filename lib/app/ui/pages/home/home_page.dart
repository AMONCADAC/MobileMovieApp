import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_movie_app/app/controllers/home_controller.dart';
import 'package:mobile_movie_app/app/ui/pages/home/widget/estados_list.dart';
import 'package:mobile_movie_app/app/ui/pages/home/widget/peliculas_list.dart';
import 'package:mobile_movie_app/app/ui/pages/home/widget/post_list.dart';
import 'package:mobile_movie_app/app/ui/pages/home/widget/profile.dart';
import 'package:mobile_movie_app/app/ui/pages/home/widget/ubicacion_list.dart';
import 'package:provider/provider.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return ChangeNotifierProvider(
      create: (_) => new _NavegationModel(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          actions: <Widget>[
            TextButton(
              style: style,
              onPressed: () {},
              child: const Text('Action 1'),
            ),
            TextButton(
              style: style,
              onPressed: () {},
              child: const Text('Action 2'),
            )
          ],
        ),
        body: _Pages(),
        bottomNavigationBar: _Navigation(),
      ),
    );
  }
}

class _Navigation extends StatelessWidget {
  const _Navigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegationModel>(context);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.red,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      currentIndex: navegacionModel.paginaActual,
      onTap: (i) => navegacionModel.paginaActual = i,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.post_add),
          label: 'Estados',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie_filter_outlined),
          label: 'Peliculas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_outlined),
          label: 'Ubicacion',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Perfil',
        ),
      ],
    );
  }
}

class _Pages extends StatelessWidget {
  const _Pages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegationModel>(context);

    return PageView(
      controller: navegacionModel.pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        //Seccion de posts
        Column(
          children: [
            SafeArea(
                child: Container(
              height: 5,
            )),
            PostList()
          ],
        ),
        //Seccion de estados
        Container(
          child: Column(
            children: [
              SafeArea(
                  child: Container(
                height: 5,
              )),
              EstadosList()
            ],
          ),
        ),
        //Seccion de peliculas
        Container(
          child: Column(
            children: [
              SafeArea(
                  child: Container(
                height: 5,
              )),
              PeliculasList()
            ],
          ),
        ),
        //Seccion de ubicaciones
        Container(
          child: Column(
            children: [
              SafeArea(
                  child: Container(
                height: 5,
              )),
              UbicationList()
            ],
          ),
        ),
        //Seccion de perfil
        Container(
          child: Column(
            children: [
              SafeArea(
                  child: Container(
                height: 5,
              )),
              Profile()
            ],
          ),
        ),
      ],
    );
  }
}

class _NavegationModel with ChangeNotifier {
  int _paginaActual = 0;
  PageController _pageController = new PageController(initialPage: 0);
  int get paginaActual => this._paginaActual;

  set paginaActual(int valor) {
    this._paginaActual = valor;
    _pageController.animateToPage(valor,
        duration: Duration(milliseconds: 50), curve: Curves.easeOut);
    notifyListeners();
  }

  PageController get pageController => this._pageController;
}
