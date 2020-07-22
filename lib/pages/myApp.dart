import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Widget Card com Flutter - DiegoFlix"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(23.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            myCardWidget(
              meuIcone: Icons.local_movies,
              meuTexto: "Filmes",
            ),
            myCardWidget(meuIcone: Icons.music_video, meuTexto: "Trailer"),
          ],
        ),
      ),
    );
  }
}

class myCardWidget extends StatelessWidget {
  //iniciando construtor
  myCardWidget({this.meuIcone, this.meuTexto});
  //definindo variaveis no card
  final IconData meuIcone;
  final String meuTexto;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(meuIcone, size: 40.0, color: Colors.grey),
              title: Text(meuTexto, style: TextStyle(fontSize: 20.0)),
              subtitle: const Text('Parasita - 2019'),
            ),
            ListTile(
              leading: Icon(meuIcone, size: 40.0, color: Colors.grey),
              title: Text(meuTexto, style: TextStyle(fontSize: 20.0)),
              subtitle: const Text('Questão de Tempo - 2015'),
            ),
            ButtonTheme.bar(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Votar'),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: const Text('Sinopse'),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
