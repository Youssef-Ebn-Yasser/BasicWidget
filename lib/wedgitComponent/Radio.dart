import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  String? country;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Radio..."),
        ),
        body: Column(
          children: [
            RadioListTile(
              title: const Text("Male"),
              value: "male",
              groupValue: country,
              onChanged: (val) {
                setState(() {
                  country = val;
                });
              },
            ),
            RadioListTile(
              title: const Text("Female"),
              value: "Female",
              groupValue: country,
              onChanged: (val) {
                setState(() {
                  country = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
