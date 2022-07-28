// ignore_for_file: annotate_overrides, prefer_const_constructors

import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

// ignore: use_key_in_widget_constructors
class PerguntaApp extends StatelessWidget {
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
            Text(perguntas[0]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: () => print('Resposta 1 foi selecionada!'),
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: () => print('Resposta 2 foi selecionada!'),
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: () => print('Resposta 3 foi selecionada!'),
            )
          ],
        ),
      ),
    );
  }
}
