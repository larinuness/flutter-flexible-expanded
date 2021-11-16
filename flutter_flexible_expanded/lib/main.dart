import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flexible & Expanded'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //diferença por Expanded
          //o expanded vem como tight ja no padrão
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.orange[200],
              height: 100,
              child: Text('Item 1 - Pretty big!!'),
            ),
          ),
          Flexible(
            //flex vai dizer o quanto vai ocupar daquele espaço em branco
            flex: 2,
            //o padrão que vem é o loose
            //o loose só ocupa o necessario
            //o tight ele vai expandir pra usar todos o espaço em branco que tiver
            fit: FlexFit.tight,
            child: Container(
              color: Colors.pink[200],
              height: 100,
              child: Text('Item 2'),
            ),
          ),
          Flexible(
            //flex vai dizer o quanto vai ocupar daquele espaço em branco
            //por exemplo em um o flex está com 1 e no outro tem 3, então ele vai dividir
            //por 3, e no caso do flex que estiver com 2 significa que ele vai ficar com 2/3 do
            //espaço em branco
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.teal[200],
              height: 100,
              child: Text('Item 3 - Olá'),
            ),
          ),
        ],
      ),
    );
  }
}
