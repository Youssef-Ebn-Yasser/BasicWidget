import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        initialIndex: 2, // default will open
        key: scaffoldKey,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellowAccent,
            title: const Text(
              "TabBar.....",
              style: TextStyle(color: Colors.green),
            ),
            bottom: const TabBar(
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4,
                labelColor: Colors.orange, // in selected all icon and text
                unselectedLabelStyle: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                tabs: [
                  Tab(
                    // child: Text("first"), // can not use text with child
                    icon: Icon(Icons.mobile_friendly),
                    text: "Icon text",
                    iconMargin: EdgeInsets.all(2),
                  ),
                  Tab(child: Text("second")),
                  Tab(child: Text("third")),
                ]),
          ),
          body: Container(
              child: const TabBarView(children: [
            Text("page 1"),
            Text("page 2"),
            Text("page 3"),
          ])),
        ),
      ),
    );
  }
}

/*
-- first to use tabbar must but scaffold at  [ DefaultTabController ]

number of element here in bottom: TabBar(tabs:
bottom: TabBar(tabs: [
              Tab(child: Text("first")),
              Tab(child: Text("second")),
              Tab(child: Text("third")),
            ]),

must eyal number here TabBarView(children
child: TabBarView(children: [
            Text("page 1"),
            Text("page 2"),
            Text("page 3"),
          ]))

 */
