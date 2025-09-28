import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,
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
            Text("data"),
            Image.asset("lib/assets/images/istockphoto-479310160-612x612.jpg"),
            Text("data"),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
