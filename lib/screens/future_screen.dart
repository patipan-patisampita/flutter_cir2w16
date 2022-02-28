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
        }).catchError((error){
          print(error);
        });
      },
    );

    print("Random Line of code");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Future Network"), backgroundColor: Colors.green),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getData();
          },
          child: Text("Click here"),
        ),
      ),
    );
  }
}
