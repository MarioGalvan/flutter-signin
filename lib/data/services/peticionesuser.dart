import 'dart:convert';
import 'package:ejemplo_1/models/user.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

const baseUrl =
    "https://desarolloweb2021a.000webhostapp.com/APIMOVIL/listaruser.php";
const baseUrlRegister =
    "https://desarolloweb2021a.000webhostapp.com/APIMOVIL/agregarUser.php";

class PeticionUser {
  static Future<List<User>> validarUser(
      http.Client client, String user, String pass) async {
    var url = Uri.parse(baseUrl);
    final response = await http.post(url, body: {
      'user': user,
      "pass": pass,
    });
    if (kDebugMode) {
      print(response.body.toString());
    }
    return compute(pasarAlista, response.body);
  }

  static Future<String> registerUser(http.Client client, String user,
      String pass, String nombre, String rol) async {
    var url = Uri.parse(baseUrlRegister);

    final response = await http.post(url, body: {
      'user': user,
      "pass": pass,
      "rol": rol,
      "nombre": nombre,
    });
    if (kDebugMode) {
      // print(response.body.toString());
    }
    return compute(responseRegister, response.body);
  }

  static List<User> pasarAlista(String responseBody) {
    final pasar = json.decode(responseBody).cast<Map<String, dynamic>>();
    return pasar.map<User>((json) => User.desdeJson(json)).toList();
  }

  static String responseRegister(String responseBody) {
    return responseBody;
  }
}
