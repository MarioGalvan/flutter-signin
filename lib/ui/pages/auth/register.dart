import 'package:ejemplo_1/domain/controller/authcontroller.dart';
import 'package:ejemplo_1/utils/userController.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController controlName = TextEditingController();
  TextEditingController controlUser = TextEditingController();
  TextEditingController controlPass = TextEditingController();
  TextEditingController controlRole = TextEditingController();
  AuthController controladorUser = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          title: const Text('Iniciar Sesión'),
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
              const SizedBox(height: 20),
              TextField(
                controller: controlName,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Nombre',
                  hintStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controlRole,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Rol',
                  hintStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controlUser,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Usuario',
                  hintStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controlPass,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          registerUser(controlName, controlUser, controlPass,
                              controlRole);
                        },
                        icon: const Icon(Icons.person_add_alt_1_outlined),
                        label: const Text('Registrarse'),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
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
