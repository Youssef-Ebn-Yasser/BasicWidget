import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController userName = new TextEditingController();
  bool isOnTap = false;
  String message = "nothing yet";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Text Field"),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              child: TextField(
                // decoration: InputDecoration(
                //   prefix: Icon(
                //     Icons.person,
                //     color: Colors.orange,
                //   ),
                //   //prefixIcon: Icon(Icons.person),
                //   prefixStyle: TextStyle(color: Colors.red),
                //   hintText: "user name",
                //   hintStyle: TextStyle(color: Color(0xff8A8989)),
                //   labelText: "Username",
                //   labelStyle: TextStyle(color: Colors.blue),
                //   fillColor: Colors.grey, // must use filled=true
                //   filled: true,
                //   icon: Icon(Icons.settings),
                //   iconColor: Colors.pink,
                //   // border: UnderlineInputBorder(); // default style
                //   border: OutlineInputBorder(
                //     borderSide: BorderSide(
                //       color: Colors.deepPurple,
                //       width: 4,
                //     ),
                //     borderRadius: BorderRadius.circular(40),
                //   ),
                //   enabledBorder: OutlineInputBorder(
                //     borderSide: BorderSide(width: 3),
                //   ),
                // ),
                // onTapOutside: (val) {
                //   isOnTap = !isOnTap;
                // },
                // maxLength: 12,
                // keyboardType: TextInputType.number,
                controller: userName,

                onChanged: (val) {
                  setState(() {
                    message = val;
                  });
                },
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  message = userName.text;
                });
              },
              color: Colors.orange,
              child: const Text("Click"),
            ),
            Text(message)
          ],
        ),
      ),
    );
  }
}
