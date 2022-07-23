import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController controlName = TextEditingController();
  TextEditingController controlEmail = TextEditingController();
  TextEditingController controlUser = TextEditingController();
  TextEditingController controlPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3, color: Colors.black, spreadRadius: 0.8)
                  ],
                ),
                child: const CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/photos/illustration-of-smiling-happy-man-with-laptop-sitting-in-armchair-picture-id1226886130?k=20&m=1226886130&s=612x612&w=0&h=fGcntDfKtd9fLO4QsgcYE3uUS3vuwKZSSl38NXFyC9A='),
                ),
              ),
              TextField(
                controller: controlUser,
                decoration:
                    const InputDecoration(labelText: 'Ingrese el nombre'),
              ),
              TextField(
                controller: controlUser,
                decoration:
                    const InputDecoration(labelText: 'Ingrese el Email'),
              ),
              TextField(
                controller: controlUser,
                decoration:
                    const InputDecoration(labelText: 'Ingrese el Usuario'),
              ),
              TextField(
                controller: controlPass,
                obscureText: true,
                decoration:
                    const InputDecoration(labelText: 'Ingrese la Contraseña'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child:  ElevatedButton.icon(
                      onPressed: () {
                        Get.toNamed('/');
                      },
                      icon: const Icon(Icons.person_add_alt_1_outlined),
                      label:const Text('Registrarse'),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                      ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
