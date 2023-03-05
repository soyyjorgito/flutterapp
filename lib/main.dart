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
          title: const Text('Assets'),
        ),
        body: ListView(
          children: <Widget> [
            Image.asset("assets/amongus.jpg"),
            Image.asset("assets/amongus2.jpg"),
          ],
        ),
      ),
    );
  }
}