import 'package:contador/controllers/cambio_imagen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CambioImagenPage extends StatelessWidget{
  const CambioImagenPage ({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cambio imagen"),
        ),
        body: Center(child: GetBuilder<CambioImagenController>(builder: (_) {
        return GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed:() {
                  _.cambioAtras();
                } , 
                icon: const Icon(
                  Icons.arrow_back,
                  size: 50,
                ),
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(_.urlImg),
              ),
              IconButton(
                onPressed:() {
                  _.cambioAdelante(1);
                } , 
                icon: const Icon(
                  Icons.arrow_forward,
                  size: 50,
                ),
              ),
            ],
          )
        );
      })),
    );
  }
}