import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("data"),
            Image.asset(
              "lib/assets/images/istockphoto-479310160-612x612.jpg",
              width: 200,
              height: 200,
            ),
            Text("data"),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
