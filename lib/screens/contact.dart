import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  static String id = '/contact';
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Contact Screen"),
      ),
    );
  }
}
