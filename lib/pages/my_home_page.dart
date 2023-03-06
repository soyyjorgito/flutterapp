import 'package:flutter/material.dart';
import 'package:myapp/pages/second_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController nameTextController;
  late TextEditingController lastNameTextController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uso basico del navegador'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Nombre:",),
              controller: nameTextController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Apellido:",),
              controller: lastNameTextController,
            ),
            ElevatedButton(
              child: Text('Mostrar segunda pantalla'),
              onPressed: () {
                _showSecondPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(name: nameTextController.text, lastName: lastNameTextController.text));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameTextController.dispose();
    lastNameTextController.dispose();
  }
}
