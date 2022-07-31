import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ejemplo_1/models/articulo.dart';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PeticionesArticulo extends GetxController {
  static final fs.FirebaseStorage storage = fs.FirebaseStorage.instance;
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  static Future<dynamic> crearArticulo(
    String idArticulo,
    String detalle,
    String marca,
    String medida,
    String cantBodega,
  ) async {
    final Map<String, dynamic> articuloMap = {
      'idArticulo': idArticulo,
      'detalle': detalle,
      'marca': marca,
      'medida': medida,
      'cantBodega': cantBodega,
    };
    var response = await _db.collection('articulos').add(articuloMap);
    return response;
  }

  static Future<void> actualizarArticulo(Articulo articulo) async {
    final Map<String, dynamic> articuloMap = {
      'idArticulo': articulo.idArticulo,
      'detalle': articulo.detalle,
      'marca': articulo.marca,
      'medida': articulo.medida,
      'cantBodega': articulo.cantBodega,
      // 'foto': articulo.foto,
    };
    await _db
        .collection('articulos')
        .doc(articulo.idArticulo)
        .update(articuloMap);
  }

  static Future<void> eliminarArticulo(String idArticulo) async {
    await _db.collection('articulos').doc(idArticulo).delete();
  }

  static Future<dynamic> consultarGral() async {
    List<dynamic> lista = [];
    await _db.collection("articulos").get().then((respuesta) {
      for (var doc in respuesta.docs) {
        lista.add(doc.data());
      }
    });
    return lista;
  }
}
