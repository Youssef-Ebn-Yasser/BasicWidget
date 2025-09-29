import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchListTileWidget extends StatefulWidget {
  @override
  State<SwitchListTileWidget> createState() => _SwitchListTileWidgetState();
}

class _SwitchListTileWidgetState extends State<SwitchListTileWidget> {
  bool value = false;
  bool tailValue = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Switch list tile"),
        ),
        body: Column(
          children: [
            Switch(
              value: value,
              onChanged: (val) {
                setState(() {
                  value = val;
                });
              },
            ),
            SwitchListTile(
              title: Text("Switch mode"),
              inactiveThumbColor: Colors.green,
              inactiveTrackColor: Colors.yellowAccent,
              activeColor: Colors.red,
              activeTrackColor: Colors.black,
              value: tailValue,
              onChanged: (val) {
                setState(() {
                  tailValue = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
