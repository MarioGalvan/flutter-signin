import 'package:ejemplo_1/data/services/peticionesarticulos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void addArticulos(controlIdArticulo, controlDetalle, controlMarca,
    controlMedida, controlCantBodega) {
  if (controlIdArticulo != "" &&
      controlDetalle != "" &&
      controlMarca != "" &&
      controlMedida != "" &&
      controlCantBodega != "") {
    PeticionesArticulo.crearArticulo(controlIdArticulo, controlDetalle,
            controlMarca, controlMedida, controlCantBodega)
        .then((res) => {
              Get.snackbar(
                "Articulo creado",
                "Articulo creado correctamente",
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.green,
                 colorText: Colors.white,
                duration: const Duration(seconds: 2),
              ),
            });
  } else {
    Get.snackbar(
      'Error',
      'Llena todos los campos',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.orange,
      colorText: Colors.white,
      borderRadius: 10,
      margin: const EdgeInsets.all(10),
      borderColor: Colors.orange,
      borderWidth: 1,
    );
  }
}
