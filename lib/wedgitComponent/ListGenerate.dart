import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListGenerateWidget extends StatelessWidget {
  List usernames = [
    {"name": "yousef", "age": 22},
    {"name": "ali", "age": 11},
    {"name": "omar", "age": 19},
    {"name": "said", "age": 25},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("List Generate.....")),
        body: ListView(
          // .builder has scroll
          children: [
            // there is no scroll here
            ...List.generate(usernames.length, (i) {
              return Card(
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(usernames[i]['name']),
                  trailing: Text("Age is ${usernames[i]['age']}"),
                ),
              );
            })
          ],
        ));
  }
}
