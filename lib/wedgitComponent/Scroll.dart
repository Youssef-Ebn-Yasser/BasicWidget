import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollWidget extends StatefulWidget {
  @override
  State<ScrollWidget> createState() => _ScrollWidgetState();
}

class _ScrollWidgetState extends State<ScrollWidget> {
  ScrollController? scrollController;

  @override
  void initState() {
    scrollController = ScrollController();

    scrollController!.addListener(() {
      print("offeset : ${scrollController!.offset}");
    });
  }

  @override
  void dispose() {
    scrollController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll...."),
      ),
      body: ListView(
        controller: scrollController,
        children: [
          MaterialButton(
            onPressed: () {
              scrollController!.animateTo(10000,
                  duration: const Duration(seconds: 3),
                  curve: Curves.easeInOut);
            },
            color: Colors.red,
            child: const Text("jump bottom"),
          ),
          ...List.generate(
              100,
              (i) => Container(
                    height: 100,
                    alignment: Alignment.center,
                    color: i % 2 == 0 ? Colors.green : Colors.blue,
                    child: Text("${i} data"),
                  )),
          MaterialButton(
            onPressed: () {
              scrollController!.jumpTo(0);
            },
            color: Colors.red,
            child: const Text("jump top"),
          ),
        ],
      ),
    );
  }
}
