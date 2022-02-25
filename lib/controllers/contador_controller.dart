import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ContadorController extends GetxController {
  var valor = 200.obs;
  var color = Colors.green;

  void incrementar() => valor.value++;
  void changeColor() {
    if (color == Colors.blue) {
      color = Colors.green;
    } else {
      color = Colors.blue;
    }
    update();
  }
}
