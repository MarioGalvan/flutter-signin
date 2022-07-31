import 'package:ejemplo_1/domain/controller/articulosController.dart';
import 'package:ejemplo_1/ui/pages/articulos/ArticulosList.dart';
import 'package:ejemplo_1/ui/pages/articulos/RegisterArticulos.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _page = 0;
  var colorIcon1 = Colors.black;
  var colorIcon2 = Colors.white;
  var colorIcon3 = Colors.white;

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final List<Widget> _children = [
    const RegisterArticulos(),
    const ArticulosList(),
  ];

  final titlesApp = [
    'Registro de Articulos',
    'Lista de Articulos',
  ];
  
ConsultasController controladorConsultas = Get.put(ConsultasController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titlesApp[_page]),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.add, size: 30, color: colorIcon1),
            Icon(
              Icons.list,
              size: 30,
              color: colorIcon2,
            ),
            Icon(Icons.exit_to_app_outlined, size: 30, color: colorIcon3),
          ],
          color: Colors.deepPurple,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            if (index == 2) {
              Get.offAllNamed('/auth');
              return;
            }
            if (index == 0) {
              setState(() {
                _page = index;
                colorIcon1 = Colors.black;
                colorIcon2 = Colors.white;
              });
            } else if (index == 1) {
              setState(() {
                _page = index;
                colorIcon1 = Colors.white;
                colorIcon2 = Colors.black;
              });
            }
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.white60,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Text(_page.toString(), textScaleFactor: 10.0),
                _children[_page],
              ],
            ),
          ),
        ));
  }
}
