import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        appBar: AppBar(
          title: const Text("Button...."),
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          color: Colors.grey,
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {},
                onLongPress: () {},
                padding: const EdgeInsets.all(30),
                child: Text("data"),
                height: 60,
                minWidth: 100,
                color: Colors.pink,
                textColor: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
                iconSize: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
