import 'package:contador/controllers/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ContadorPage extends StatelessWidget {
  const ContadorPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ContadorController>(
              builder: (contadorController) {
                return Container(
                  width: 200,
                  height: 200,
                  color: contadorController.color,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton:
          GetBuilder<ContadorController>(builder: (contadorController) {
        return FloatingActionButton(
          splashColor: Colors.amber,
          tooltip: 'Click para cambiar',
          child: const Icon(Icons.add),
          backgroundColor: Colors.pink,
          onPressed: () {
            contadorController.changeColor();
          },
        );
      }),
    );
  }
}
