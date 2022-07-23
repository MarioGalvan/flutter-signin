import 'package:ejemplo_1/domain/controller/authcontroller.dart';
import 'package:ejemplo_1/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(AuthController());
  runApp(const MyApp());
}
