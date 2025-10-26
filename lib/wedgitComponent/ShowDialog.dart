import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Dialog"),
      ),
      body: ListView(
        children: [
          Center(
            child: MaterialButton(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(),
                        title: Text("warning..."),
                        content: Text("enter valid data"),
                        actions: [
                          TextButton(onPressed: () {}, child: const Text("ok")),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("close"))
                        ],
                      );
                    });
              },
              color: Colors.orange,
              child: const Text("Show"),
            ),
          )
        ],
      ),
    );
  }
}
