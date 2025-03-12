import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sorteio de Nomes",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(title: "Sorteio de Nome"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  _SortearNome createState() => _SortearNome();
}

class _SortearNome extends State<MyHomePage> {
  List<String> nomes = ["Luis", "Carlos", "Ana", "Lucas", "Marlice", "João", "Ingrid"];
  String nomeSorteado = "Aperte o botão";

  void sortearNome() {
    final random = Random();
    setState(() {
      nomeSorteado = nomes[random.nextInt(nomes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nomeSorteado,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: sortearNome,
              child: Text('Aperte Para Sortear'),
            ),
          ],
        ),
      ),
    );
  }
}
