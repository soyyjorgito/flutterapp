import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final persona =
        ModalRoute.of(context)!.settings.arguments as SecondPageArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(persona.name),
            Text(persona.lastName),
          ],
        ),
      ),
    );
  }
}

class SecondPageArguments {
  String name;
  String lastName;
  SecondPageArguments({required this.name, required this.lastName});
}
