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
            title: const Text('Uso de Column y Row'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Expanded(child: Text("Activar sonido:")),
                    Switch(value: false, onChanged: (value) {})
                  ],
                ),
                const Divider(),
                Row(
                  children: <Widget>[
                    const Expanded(child: Text("Habilitar uso de la camara:")),
                    Switch(value: false, onChanged: (value) {})
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(height:50,width:50,color: Colors.orange),
                    Container(height:50,width:50,color: Colors.red),
                    Container(height:50,width:50,color: Colors.orange),
                    Container(height:50,width:50,color: Colors.red),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
