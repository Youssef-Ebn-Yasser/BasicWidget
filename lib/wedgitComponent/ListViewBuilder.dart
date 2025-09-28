import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  List employees = [
    {"name": "ali", "age": 23},
    {"name": "said", "age": 33},
    {"name": "hani", "age": 15},
    {"name": "ali", "age": 23},
    {"name": "said", "age": 33},
    {"name": "hani", "age": 15},
    {"name": "ali", "age": 23},
    {"name": "said", "age": 33},
    {"name": "salma", "age": 15},
    {"name": "alia", "age": 23},
    {"name": "said", "age": 33},
    {"name": "sara", "age": 15},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: employees.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
              child: Container(
                alignment: Alignment.center,
                width: 400,
                height: 100,
                color: index.isEven ? Colors.yellowAccent : Colors.orange,
                child: Text(
                  employees[index]["name"],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.pink,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
