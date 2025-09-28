import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 800,
          height: 800,
          child: Image.asset(
              width: 300,
              height: 600,
              fit: BoxFit.cover,
              "lib/assets/images/istockphoto-479310160-612x612.jpg"),
        ),
      ),
    );
  }
}
