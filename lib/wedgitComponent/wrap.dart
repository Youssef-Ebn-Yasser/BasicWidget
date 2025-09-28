import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Wrap(
          children: [
            Text("data"),
            Image.asset(
              "lib/assets/images/istockphoto-479310160-612x612.jpg",
            ),
            Text("data"),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
