import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool? chess;
  bool? tines;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Check box")),
        body: Column(
          children: [
            CheckboxListTile(
              title: const Text("Check if you play Chess"),
              value: chess,
              onChanged: (val) {
                setState(() {
                  chess = val;
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Check if you play Tines"),
              value: tines,
              onChanged: (val) {
                setState(() {
                  tines = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
