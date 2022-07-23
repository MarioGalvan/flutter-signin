import 'package:ejemplo_1/ui/pages/auth/login.dart';
import 'package:ejemplo_1/ui/pages/auth/register.dart';
import 'package:ejemplo_1/ui/pages/navigation/navigarionBar.dart';
import 'package:ejemplo_1/ui/pages/content/principal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mi Primer Programa',
      debugShowCheckedModeBanner: false,
      routes: {
        '/Principal': (context) => const Principal(),
        '/auth': (context) => const Login(),
        '/register': (context) => const Register(),
      },
      home: const NavigationBarApp(),
     theme: (
      ThemeData(
        primarySwatch: Colors.deepPurple
      )
     ),
    );
  }
}
