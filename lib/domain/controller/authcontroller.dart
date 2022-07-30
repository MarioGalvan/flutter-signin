import 'dart:async';
import 'dart:convert';

import 'package:ejemplo_1/data/services/peticionesuser.dart';
import 'package:ejemplo_1/models/user.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  final Rxn<List<User>> _users = Rxn<List<User>>();
  String _mensaje = "";

  List<User>? get users => _users.value;
  String? get mensaje => _mensaje;

  Future<void> enviarDatos(
      http.Client cliente, String user, String pass) async {
    _users.value = await PeticionUser.validarUser(cliente, user, pass);
  }

  Future<String?> registrarUser(http.Client cliente, String user, String pass,
      String nombre, String rol) async {
    _mensaje =
        await PeticionUser.registerUser(cliente, user, pass, nombre, rol);
    return _mensaje;
  }
}
