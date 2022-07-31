import 'package:ejemplo_1/data/services/peticionesarticulos.dart';
import 'package:ejemplo_1/models/articulo.dart';
import 'package:get/get.dart';

class ConsultasController extends GetxController {
  final Rxn<List<Articulo>> _articulos = Rxn<List<Articulo>>();
  // Future<dynamic> getArticulosGral() async {
  //   _articulos.value = await PeticionesArticulo.consultarGral();
  // }
}
