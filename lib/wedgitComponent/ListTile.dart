import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListTile(
          title: Text("title of list tile"),
          subtitle: Text("sub title"),
        ),
      ),
    );
  }
}
