import 'package:flutter/material.dart';

class CntactScreen extends StatelessWidget {
  static String id = '/contact';
  const CntactScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Scren"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Contact Screen"),
      ),
    );
  }
}