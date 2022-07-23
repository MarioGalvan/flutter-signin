import 'package:ejemplo_1/domain/controller/authcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        title: const Text('Login'),
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
                      'https://cdn3d.iconscout.com/3d/premium/thumb/experiencing-metaverse-world-5360091-4492277.png'),
                ),
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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      controladorUser
                          .enviarDatos(
                              http.Client(), controlUser.text, controlPass.text)
                          .then((res) => {
                                if (controladorUser.users?.isNotEmpty == true)
                                  {Get.toNamed('/Principal')}
                                else
                                  {
                                    Get.showSnackbar(const GetSnackBar(
                                      title: 'Validación de usuarios',
                                      message: "Credenciales incorrectas",
                                      icon: Icon(Icons.error_outline_outlined),
                                      duration: Duration(seconds: 3),
                                      backgroundColor: Colors.deepOrange
                                    ))
                                  }
                              });
                    },
                    icon: const Icon(Icons.save),
                    label: const Text('Ingresar'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
