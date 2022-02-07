import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  String texto;
  Resultado(this.texto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
