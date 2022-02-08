import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';



main() {
  runApp(
    PerguntaApp(),
  );
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
    }
  ];
  void _responder() {
    if (temPerguntaSelecionada) {
      setState(
        () {
          _perguntaSelecionada++;
        },
      );
    }
  }

 
 bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }


  @override
  Widget build(BuildContext context) {
   

    //for (var textoResp in respostas) {
    // widgets.add(Resposta(textoResp, responder));
    //}

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Perguntas'),
          ),
        ),
        body: temPerguntaSelecionada
            ? Questionario(perguntas: _perguntas, perguntaSelecionada: _perguntaSelecionada, quandoResponder: _responder)
            : Resultado('Parabéns'),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
