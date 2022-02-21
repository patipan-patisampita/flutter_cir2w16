import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String id = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Flutter App"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Text("Login Screen"),
      ),
    );
  }
}
