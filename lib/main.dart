import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Among Us',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> names = [
    "Jorge", 
    "Kevin", 
    "Tatiana",
    "Mateo",
    "Diego",
    "Daniel",
    "Daniela",
    "Juliana",
    "David",
    "Santiago",
    "Marcelo",
    "Alejandro",
    "Fernando",
    "Roberto",
    "Andres",
    "Hugo",
    "Pablo",
    "Juan"
    ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contactos'),
        backgroundColor: Color.fromARGB(255, 15, 167, 1),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          final name = names[index];
          return ListTile(
            title: Text(name),
            leading: Icon(Icons.person),
            onTap: ()
            {
              print(name);
            }
            );
        },
      ),
    );
  }
}
