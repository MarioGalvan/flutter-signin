import 'package:ejemplo_1/data/services/peticionesuser.dart';
import 'package:ejemplo_1/models/user.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  final Rxn<List<User>> _users = Rxn<List<User>>();
  List<User>? get users => _users.value;

  Future<void> enviarDatos(
      http.Client cliente, String user, String pass) async {
    _users.value = await PeticionUser.validarUser(cliente, user, pass);
  }
}
