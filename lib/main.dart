import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Colores'),
        ),
        body: Container(
          width: 300,
          height: 300,
          color: Color.fromARGB(29, 209, 254, 1),
        ),
      ),
    );
  }
}
