import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Show Bottom bar..."),
      ),
      body: MaterialButton(
        color: Colors.orange,
        child: const Text("snackbar"),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              showCloseIcon: true,
              duration: Duration(seconds: 2),
              content: Text("done this is snack bar.."),
            ),
          );
        },
      ),
    );
  }
}
