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
          title: const Text('Uso del Column'),
        ),
        body: SizedBox(
          width:double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                color: Colors.orange,
                height:100,
                width:100,
                ),
                Text("Hola, estoy en una columna"),
                Image.network("https://media.tenor.com/4_E21LSI0ogAAAAi/banana-cheerer.gif")
            ],
          ),
        ),
      ),
    );
  }
}