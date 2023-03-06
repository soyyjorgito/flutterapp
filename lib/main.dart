import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones en Flutter'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered))
                      return Colors.blue.withOpacity(0.04);
                    if (states.contains(MaterialState.focused) ||
                        states.contains(MaterialState.pressed))
                      return Colors.blue.withOpacity(0.80);
                    return null; // Defer to the widget's default.
                  },
                ),
              ),
              onPressed: _onPressBtn1,
              child: const Text("ElevatedButton",
                  style: TextStyle(color: Colors.black))),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: _onPressBtn2,
            child: Text('TextButton'),
          ),
          IconButton(onPressed: _onPressBtn3, icon: Icon(Icons.delete)),
          OutlinedButton(onPressed: _onPressBtn4, child: Text("OutlinedButton"))
        ],
      )),
    );
  }

  void _onPressBtn1() {}

  void _onPressBtn2() {}
  void _onPressBtn3() {}

  void _onPressBtn4() {}
}
