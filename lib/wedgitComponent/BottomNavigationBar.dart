import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int selectedIndex = 0;

  List<Widget> listWidget = const [
    Text("page 1 profile"),
    Text("page 2 home"),
    Text("page 3 settings"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              selectedIndex = val;
            });
          },
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'peofile'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'setting',
            ),
            // BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search')
          ],
          backgroundColor: Colors.greenAccent,
          selectedItemColor: Colors.red,
          // selectedFontSize: 18,
        ),
        appBar: AppBar(
          title: const Text("Bottom Navigation bar"),
        ),
        body: Container(
          child: listWidget.elementAt(selectedIndex),
        ),
      ),
    );
  }
}
