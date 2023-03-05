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
          title: const Text('Uso de paddings y margenes en Container'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width:200,
            height:200,
            color: Colors.orange,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
        
            child: const Text(
              "-------",
                style: TextStyle(
                backgroundColor: Colors.black,
                fontSize: 60
              ),
            ),
          ),
        ),
      ),
    );
  }
}
