import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowBottomSheetWidget extends StatelessWidget {
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
        child: const Text("bottomSheet"),
        onPressed: () {
          scaffoldKey.currentState!.showBottomSheet((context) => Container(
                padding: const EdgeInsets.all(10),
                height: 100,
                color: Colors.blue,
                width: MediaQuery.sizeOf(context).width,
                child: const Column(
                  children: [
                    Text("Choose Image"),
                    Text("From Gallary"),
                    Text("From camera"),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
