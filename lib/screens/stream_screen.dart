import 'dart:async';

import 'package:flutter/material.dart';

class StreamScreen extends StatelessWidget {
  static String id = "/strem";
  final StreamController streamController =
      StreamController(); //1.create new stream controller
  //const StreamScreen({Key? key}) : super(key: key);
  void streamData() async {
    //3.Listener to the stream
    streamController.stream.listen((data) {
      print(data);
    });
    //2.Adding data to the stream
    for (int i = 0; i < 4; i++) {
      streamController.add("You got a message");
      await Future.delayed(Duration(seconds: 2),() {
        print("Read");
      },);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Stream"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            streamData();
          },
          child: Text("War of Russian and Ukrain"),
        ),
      ),
    );
  }
}
