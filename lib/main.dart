// ignore_for_file: annotate_overrides, prefer_const_constructors

import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntasSelecionada = 0;

  void responder() {
    setState(() {
      perguntasSelecionada++;
    });

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
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntasSelecionada]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            )
          ],
        ),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() => PerguntaAppState();
}
