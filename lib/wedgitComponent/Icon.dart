import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IConWidget extends StatelessWidget {
  const IConWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const Center(
              child: SizedBox(
                width: 300,
                height: 300,
                child: Icon(
                  Icons.ac_unit_outlined,
                  color: Colors.red,
                  size: 33,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 300,
                child: IconButton(
                  iconSize: 40,
                  icon: const Icon(Icons.ac_unit_outlined),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
