// ignore: file_names
import 'package:ejemplo_1/ui/pages/auth/login.dart';
import 'package:ejemplo_1/ui/pages/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NavigationBarApp extends StatefulWidget {
  const NavigationBarApp({Key? key}) : super(key: key);

  @override
  State<NavigationBarApp> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<NavigationBarApp> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
   Login(),
   Register()
  
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
            backgroundColor: HexColor("#A884FE"),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_circle),
            label: 'Login',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'Registro',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
