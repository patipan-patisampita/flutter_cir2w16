import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  static String id = '/first';
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("First Screen"),
    );
  }
}
