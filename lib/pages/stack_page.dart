import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Seccion de stack"),
      ),
      body: Stack(
        children: const [
          CircleAvatar(
            radius: 90,
            backgroundImage: NetworkImage('https://cdn.eldeforma.com/wp-content/uploads/2020/01/licenciado.jpg'),
          ),
          Positioned(
            right: 10,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}