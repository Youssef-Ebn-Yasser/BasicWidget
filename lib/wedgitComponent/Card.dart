import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ListTile.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Card(
        margin: EdgeInsets.all(40),
        child: Container(
          padding: const EdgeInsets.all(33),
          child: ListTile(
            leading: Text("leading"),
            onTap: () {
              print("on tap click in list tile");
            },
            title: Text("title of list tile"),
            subtitle: Text("sub title"),
            trailing: Text("trailling"),
          ),
        ),
      )),
    );
  }
}
