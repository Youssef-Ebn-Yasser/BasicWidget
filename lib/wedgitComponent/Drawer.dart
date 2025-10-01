import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: drawerKey,
        appBar: AppBar(
          title: const Text("Drawer..."),
          titleTextStyle: const TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        endDrawer: Drawer(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "lib/assets/images/istockphoto-479310160-612x612.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: ListTile(
                        title: Text("Title"),
                        subtitle: Text("Sub title"),
                        trailing: Icon(Icons.person),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text("Title"),
                        subtitle: const Text("Sub title"),
                        trailing: const Icon(Icons.person),
                        leading: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.message)),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text("Title"),
                        subtitle: const Text("Sub title"),
                        trailing: const Icon(Icons.person),
                        leading: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.settings),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text("Title"),
                        subtitle: const Text("Sub title"),
                        trailing: const Icon(Icons.person),
                        leading: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.message)),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text("Title"),
                        subtitle: const Text("Sub title"),
                        trailing: const Icon(Icons.person),
                        leading: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.message)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        drawer: Container(
          padding: const EdgeInsets.all(40),
          width: MediaQuery.sizeOf(context).width / 1.5,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 24,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 24,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "Setting",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 24,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "Adout",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 24,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 24,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "Back",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () {
              drawerKey.currentState!.openEndDrawer();
            },
            color: Colors.deepOrange,
            child: const Text(
              "Open Drawer",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
