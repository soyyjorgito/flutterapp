import 'package:flutter/material.dart';
import 'package:myapp/src/screens/second_page.dart';

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

  late FocusNode nameFocus;
  late FocusNode lastNameFocus;
  late FocusNode phoneFocus;
  late FocusNode emailFocus;
  late FocusNode ageFocus;
  late FocusNode webSiteFocus;

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
                  focusNode: nameFocus,
                  onEditingComplete: () {
                    requestFocus(context, lastNameFocus);
                  },
                  textInputAction: TextInputAction.next,
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
                  focusNode: lastNameFocus,
                  onEditingComplete: () {
                    requestFocus(context, phoneFocus);
                  },
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Número de teléfono:",
                  ),
                  keyboardType: TextInputType.phone,
                  focusNode: phoneFocus,
                  onEditingComplete: () {
                    requestFocus(context, emailFocus);
                  },
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Correo electrónico:",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  focusNode: emailFocus,
                  onEditingComplete: () {
                    requestFocus(context, ageFocus);
                  },
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Edad:",
                  ),
                  keyboardType: TextInputType.number,
                  focusNode: ageFocus,
                  onEditingComplete: () {
                    requestFocus(context, webSiteFocus);
                  },
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Sitio web:",
                  ),
                  keyboardType: TextInputType.url,
                  focusNode: webSiteFocus,
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

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
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
    nameFocus = FocusNode();
    lastNameFocus = FocusNode();
    phoneFocus = FocusNode();
    emailFocus = FocusNode();
    ageFocus = FocusNode();
    webSiteFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    lastNameController.dispose();
    nameFocus.dispose();
    lastNameFocus.dispose();
    phoneFocus.dispose();
    emailFocus.dispose();
    ageFocus.dispose();
    webSiteFocus.dispose();
  }
}
