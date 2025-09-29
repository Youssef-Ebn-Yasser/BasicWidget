import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.orange,
                  child: const Text(
                    "click here",
                    style: TextStyle(
                      color: Colors.tealAccent,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.red,
                  child: const Text(
                    "click here",
                    style: TextStyle(
                      color: Colors.tealAccent,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.blue,
                  child: const Text(
                    "click here",
                    style: TextStyle(
                      color: Colors.tealAccent,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.orange,
                  child: const Text(
                    "click here",
                    style: TextStyle(
                      color: Colors.tealAccent,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// summintion of flexs and every one take one
