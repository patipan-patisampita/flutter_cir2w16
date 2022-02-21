import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String id = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Screen"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Profile Screen"),
      ),
    );
  }
}
