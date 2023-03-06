import 'package:flutter/material.dart';
import 'package:myapp/pages/second_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String nameValue;
  late String lastNameValue;

  final nameController = TextEditingController();
  final lastNameController = TextEditingController();

  

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos de teclado en TextField'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "Nombre:",
                  ),
                  onSaved: (value) {
                    nameValue = value!;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Llene este campo";
                    }
                  },
                ),
                TextFormField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                    labelText: "Apellido:",
                  ),
                  onSaved: (value) {
                    lastNameValue = value!;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Llene este campo";
                    }
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Número de teléfono:",
                  ),
                  keyboardType: TextInputType.phone,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Correo electrónico:",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Edad:",
                  ),
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Sitio web:",
                  ),
                  keyboardType: TextInputType.url,
                ),
                ElevatedButton(
                  child: const Text('Mostrar segunda pantalla'),
                  onPressed: () {
                    _showSecondPage(context);
                  },
                ),
                const SizedBox(height: 400, width: 200),
              ],
            ),
          )),
    );
  }

  void _showSecondPage(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }
    Navigator.of(context).pushNamed("/second",
        arguments:
            SecondPageArguments(name: nameValue, lastName: lastNameValue));
  }

  @override
  void initState() {
    super.initState();
    
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    lastNameController.dispose();
  }
}
