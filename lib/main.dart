import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Material App', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = "Marvin";
  double ProgressValue = 0.0;
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(name, style: TextStyle(fontSize: 30)),
            LinearProgressIndicator(value: ProgressValue),
            Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeName,
        child: const Icon(Icons.refresh),
      ),
    );
  }

  void changeName() {
    setState(() => {
          if (name == "Marvin") {name = "Jorge"} else {name = "Marvin"},
          ProgressValue += 0.01
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (value) {
      changeName();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
