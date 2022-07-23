import 'package:ejemplo_1/ui/pages/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the party!', style:
             TextStyle(fontSize: 30,
             fontWeight: FontWeight.bold,
             )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/auth');
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
              ),
              child: const Text('Iniciar Sesión'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/register');
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                ),
                child: const Text('Registrate')),
          ],
        ),
      ),
    );
  }
}
