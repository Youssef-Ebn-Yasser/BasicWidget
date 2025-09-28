import 'package:flutter/material.dart';

class SingleScrollViewWidget extends StatelessWidget {
  const SingleScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("data"),
            Image.asset("lib/assets/images/istockphoto-479310160-612x612.jpg"),
            Text("data"),
            Text("data"),
            Text("data"),
            Image.asset("lib/assets/images/istockphoto-479310160-612x612.jpg"),
            Text("data"),
            Text("data"),
            Text("data"),
            Image.asset("lib/assets/images/istockphoto-479310160-612x612.jpg"),
            Text("data"),
            Text("data"),
          ],
        ),
      )),
    );
  }
}
