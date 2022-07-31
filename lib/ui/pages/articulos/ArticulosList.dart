import 'dart:convert';

import 'package:ejemplo_1/data/services/peticionesarticulos.dart';
import 'package:ejemplo_1/domain/controller/articulosController.dart';
import 'package:ejemplo_1/models/articulo.dart';
import 'package:ejemplo_1/ui/pages/articulos/CardArticle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticulosList extends StatefulWidget {
  const ArticulosList({Key? key}) : super(key: key);
  State<ArticulosList> createState() => _ArticulosListState();
}

class _ArticulosListState extends State<ArticulosList> {
  List dataObtener = [];

  @override
  initState() {
    super.initState();
    void getArticles() async {
      var response = await PeticionesArticulo.consultarGral();
      print(response);
      setState(() {
        dataObtener = response;
      });
    }
    getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return (Expanded(
      child: ListView.builder(
        itemCount: dataObtener.length,
        itemBuilder: (context, index) {
          return  CardArticle(
            articulo:{
              'titulo': dataObtener[index]['detalle'],
              'marca': dataObtener[index]['marca'],
              'cantBodega': dataObtener[index]['cantBodega'],
              'medida': dataObtener[index]['medida'],
              'idArticulo': dataObtener[index]['idArticulo'],
            }
          );
        },
      ),
    ));
  }
}
