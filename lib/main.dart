import 'package:ejemplo_1/data/services/peticionesarticulos.dart';
import 'package:ejemplo_1/domain/controller/articulosController.dart';
import 'package:ejemplo_1/domain/controller/authcontroller.dart';
import 'package:ejemplo_1/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(PeticionesArticulo());
  Get.put(AuthController());
  Get.put(ConsultasController());
  runApp(const MyApp());
}
