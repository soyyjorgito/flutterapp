import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso del scaffold"),
      ),
      body: Center(),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () => {}),
      drawer: Drawer(
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.black,
    );
  }
}
