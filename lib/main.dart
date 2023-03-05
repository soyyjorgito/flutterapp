import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: "Fredoka One"),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Uso de fonts"),
      ),
      body: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ipsum nulla, faucibus et sagittis at, lacinia non nisi. Duis vel nisi tincidunt, tristique neque in, dapibus mauris. Sed at viverra orci. Phasellus nec eros mauris. Etiam sollicitudin euismod lorem, ut aliquet lacus tempor sit amet. Suspendisse potenti. Cras dolor orci, commodo ac blandit ornare, tristique sed dui. Cras sapien tellus, aliquet eu rhoncus vitae, volutpat sit amet lorem. Phasellus semper turpis ut condimentum auctor. Etiam vitae dictum ex, ac rutrum magna. Pellentesque aliquam molestie malesuada. Morbi mattis tincidunt massa, vitae ultrices arcu molestie vel.",
      style: TextStyle(fontFamily: "BeVietnamPro"),),
    );
  }
}