import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("PageView && PageView Builder"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            // child: PageView(
            //   onPageChanged: (index){
            //     // in slider
            //   },
            //   children: const [
            //     Text("page vewi 01"),
            //     Text("page vewi 02"),
            //     Text("page vewi 03"),
            //   ],
            // ),

            child: PageView.builder(
              itemCount: 2,
              itemBuilder: (context,index){
                return // list of data
              },
            ),
          ),
        ),
      ),
    );
  }
}
