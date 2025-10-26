import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: ListView(
        children: [
          Container(
            // padding: const EdgeInsets.all(40),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 500,
                  height: 500,
                  color: Colors.blue,
                  child: const Text("Fist"),
                ),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.black,
                  child: const Text("Fist"),
                ),
                Container(
                  width: 300,
                  height: 200,
                  color: Colors.red,
                  child: const Text("Fist"),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 120,
            height: 120,
            child: Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        NetworkImage("https://example.com/profile.jpg"),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 20,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.blue,
                      child:
                          Icon(Icons.camera_alt, color: Colors.white, size: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Image.network(
                "https://picsum.photos/400/200",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  "Breaking News: Flutter 4 Released!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              const Icon(Icons.shopping_cart, size: 40),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  constraints:
                      const BoxConstraints(minWidth: 20, minHeight: 20),
                  child: const Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(color: Colors.black, height: 200), // pretend video
              const Center(
                  child:
                      Icon(Icons.play_circle, size: 64, color: Colors.white)),
            ],
          ),
          Stack(
            children: [
              Container(color: Colors.blueGrey, height: 400), // pretend map
              Positioned(
                bottom: 20,
                right: 20,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.my_location),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
/*
real-world use cases for Stack are:

Badges & notifications (cart, messages, alerts)
Overlaying icons/buttons (camera on profile, play button on video)
Combining text & images (banners, headers, cards)
Floating actions on top of content (maps, dashboards)
Complex layered UIs (animations, cards with shadows

 */
