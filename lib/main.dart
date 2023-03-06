import 'package:flutter/material.dart';
import 'package:myapp/pages/my_home_page.dart';
import 'package:myapp/pages/second_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', initialRoute: "/", routes: {
      "/": (BuildContext context) => MyHomePage(),
      "/second": (BuildContext context) => const SecondPage(),
    });
  }
}
