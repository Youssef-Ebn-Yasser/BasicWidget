import 'package:basic_wedgit/wedgitComponent/Stack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NatigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("navigator"),
      ),
      body: Column(
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => StackWidget()),
              );
            },
            color: Colors.orange,
            child: const Text("show stack page"),
          )
        ],
      ),
    );
  }
}
