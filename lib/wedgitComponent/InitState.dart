import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InitStateWidget extends StatefulWidget {
  const InitStateWidget({super.key});

  @override
  State<InitStateWidget> createState() => _InitStateWidgetState();
}

class _InitStateWidgetState extends State<InitStateWidget> {
  @override
  void initState() {
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Initial state && Dispose..."),
      ),
    );
  }
}
