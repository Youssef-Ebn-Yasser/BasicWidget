import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                color: Colors.orange,
                offset: Offset(4, 5),
                spreadRadius: 10,
                blurRadius: 5,
              ),
            ],
            border: Border.all(
              color: Colors.blueAccent,
              width: 3,
            ),
          ),
          margin: const EdgeInsets.all(33),
          padding: const EdgeInsets.all(33),

          //color: const Color(0xff675423),
          child: const Text(
            "child of container",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ),
    );
  }
}

/*
when add decoration
can not use color

decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(33),
          ),




 */
