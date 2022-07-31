import 'package:ejemplo_1/domain/controller/authcontroller.dart';
import 'package:ejemplo_1/utils/userController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controlUser = TextEditingController();
  TextEditingController controlPass = TextEditingController();
  AuthController controladorUser = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Iniciar Sesión'),
        ),
        body: Container(
            height: 500,
            margin: const EdgeInsets.only(top: 60.0),
            width: double.infinity,
            child: Align(
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(20),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          // boxShadow: [
                          //   BoxShadow(
                          //       blurRadius: 1,
                          //       color: Color.fromARGB(255, 129, 123, 123),
                          //       spreadRadius: 0.4)
                          // ],
                        ),
                        child: const CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/736x/25/0c/a0/250ca0295215879bd0d53e3a58fa1289.jpg'),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: controlUser,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Digita tu usuario',
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
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        controller: controlPass,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Digita tu password',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              userLogin(
                                  controlUser, controlPass, controladorUser);
                            },
                            icon: const Icon(Icons.login_sharp),
                            label: const Text('Ingresar'),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0))),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
