import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulwidgetExample extends StatefulWidget {
  const StatefulwidgetExample({super.key});

  @override
  State<StatefulwidgetExample> createState() => _StatefulwidgetExampleState();
}

class _StatefulwidgetExampleState extends State<StatefulwidgetExample> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("StateFul Widget"),
        ),
        body: Column(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    this.number += 1;
                  });
                },
                icon: const Icon(Icons.add)),
            Text("${number}"),
            IconButton(
                onPressed: () {
                  setState(() {
                    this.number -= 1;
                  });
                },
                icon: const Icon(Icons.minimize)),
          ],
        ),
      ),
    );
  }
}
