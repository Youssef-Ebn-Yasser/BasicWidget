import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopupemeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popupeme ...."),
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.person),
              onOpened: () {
                // work when click on three dotted
              },
              onSelected: (val) {
                // navigate depend on value
              },
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("one"),
                      value: 'val01',
                      onTap: () {
                        // work when click on it
                      },
                    ),
                    PopupMenuItem(child: Text("two"), value: 'val02'),
                    PopupMenuItem(child: Text("three"), value: 'val03'),
                  ])
        ],
      ),
      body: Text("data"),
    );
  }
}
