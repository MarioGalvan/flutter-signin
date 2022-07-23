import 'dart:convert';
import 'package:ejemplo_1/models/user.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http; 
const baseUrl = "https://desarolloweb2021a.000webhostapp.com/APIMOVIL/listaruser.php";


class PeticionUser{
  static Future<List<User>>validarUser(
    http.Client client, String user, String pass) async {
      var url = Uri.parse(baseUrl);
      final response = await http.post(url,body:{
        'user':user,
        "pass":pass,
      });
      if(kDebugMode){
        print(response.body.toString());
      }
      return compute(pasarAlista,response.body);
    }

    static List<User> pasarAlista (String responseBody){
      final pasar = json.decode(responseBody).cast<Map<String,dynamic>>();
      return pasar.map<User>((json)=> User.desdeJson(json)).toList();
    }
  
}