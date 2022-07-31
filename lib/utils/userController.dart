import 'package:ejemplo_1/domain/controller/authcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

AuthController controladorUser = Get.find();

void userLogin(controlUser, controlPass, controladorUser) {
  if (controlUser.text.isNotEmpty && controlPass.text.isNotEmpty) {
    controladorUser
        .enviarDatos(http.Client(), controlUser.text, controlPass.text)
        .then((res) => {
              if (controladorUser.users?.isNotEmpty == true)
                {Get.offAllNamed('/Principal')}
              else
                {
                  Get.showSnackbar(const GetSnackBar(
                      title: 'Validación de usuarios',
                      message: "Credenciales incorrectas",
                      icon: Icon(Icons.error_outline_outlined),
                      duration: Duration(seconds: 3),
                      backgroundColor: Colors.deepPurple))
                }
            });
  } else {
    Get.showSnackbar(const GetSnackBar(
        title: 'Validación de campos',
        message: "LLena todos los campos",
        icon: Icon(Icons.error_outline_outlined),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.orange));
  }
}

void registerUser(controlName, controlUser, controlPass, controlRole) {
  if (controlName.text.isNotEmpty &&
      controlUser.text.isNotEmpty &&
      controlPass.text.isNotEmpty &&
      controlRole.text.isNotEmpty) {
    controladorUser
        .registrarUser(http.Client(), controlUser.text, controlPass.text,
            controlName.text, controlRole.text)
        .then((res) => {
              if (res != null)
                {
                  Get.showSnackbar(const GetSnackBar(
                      title: 'Registro Completado',
                      message: "Graias por registrarte",
                      icon: Icon(Icons.error_outline_outlined),
                      duration: Duration(seconds: 3),
                      backgroundColor: Colors.green))
                }
            });
  } else {
    Get.showSnackbar(const GetSnackBar(
        title: 'Validación de campos',
        message: "LLena todos los campos",
        icon: Icon(Icons.error_outline_outlined),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.orange));
  }
}
