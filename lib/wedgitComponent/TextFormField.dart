import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextformfieldWidget extends StatefulWidget {
  const TextformfieldWidget({super.key});

  @override
  State<TextformfieldWidget> createState() => _TextformfieldWidgetState();
}

class _TextformfieldWidgetState extends State<TextformfieldWidget> {
  GlobalKey<FormState> formstate = GlobalKey();
  String? phone;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Text Form Fields ")),
        body: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formstate,
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                TextFormField(
                  onSaved: (val) {
                    phone =
                        val; // work when this will call [[ formstate.currentState!.save(); ]]
                  },
                  validator: (val) {
                    if (val == null || val.isEmpty || val.length != 11) {
                      return "Length must be 11 characheter";
                    }
                  },
                ),
                TextFormField(
                  obscureText: true, // for password
                ),
                MaterialButton(
                  onPressed: () {
                    if (formstate.currentState!.validate()) {
                      formstate.currentState!.save();
                    } else {
                      // no submit show dialog
                    }
                  },
                  color: Colors.orange,
                  child: const Text(
                    "valid",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
