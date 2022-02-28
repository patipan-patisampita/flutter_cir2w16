import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  static String id = "/future";

  const FutureScreen({Key? key}) : super(key: key);

  @override
  _FutureScreenState createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  Future<void> getData() async {
    Future.delayed(const Duration(seconds: 3), () {
      print("Volodymyr Zelenskyy Id - 1");
    }).then(
      (value) {
        Future.delayed(const Duration(seconds: 2), () {
          print("Hey Vlademir Putin Id - 2");
        }).catchError((error) {
          print(error);
        });
      },
    );

    print("Random Line of code");
  }

  Future<void> getAsynncData() async {
    final UserId = Future.delayed(Duration(seconds: 3), () {
      print("Volodymyr Zelenskyy Id - 1");
      return "Volodymyr Zelenskyy";
    });

    Future.delayed(Duration(seconds: 2), () {
      print("Hey Vlademir Putin, Hi $UserId");
    });
    print("War of Russian adn Ukrain");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Future Network"), backgroundColor: Colors.green),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                getData();
              },
              child: Text("Click here"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                getAsynncData();
              },
              child: Text("Click War"),
            ),
          ],
        ),
      ),
    );
  }
}
