import 'package:flutter/material.dart';

main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  void responder() {
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Perguntas'),
          ),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
                onPressed: responder,
                 
                
                child: Text('Resposta 1')),
            ElevatedButton(onPressed: () {}, child: Text('Resposta 2')),
            ElevatedButton(onPressed: () {}, child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}
