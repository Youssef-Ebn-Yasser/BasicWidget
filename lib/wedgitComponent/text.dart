import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "App bar",
            style: TextStyle(
              color: Color(0xff3498db), // or Colors.Black
              fontSize: 44,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.red,
            ),
          ),
        ),
        body: const Text("data new"),
      ),
    );
  }
}
