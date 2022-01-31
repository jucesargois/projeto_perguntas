import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
 final String texto;
  Function() onPressed;
  Resposta(this.texto,this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(texto),
      ),
    );
  }
}
