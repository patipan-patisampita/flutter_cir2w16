import 'package:flutter/material.dart';

import 'screens/contact.dart';
import 'screens/first_screen.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen()
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        FirstScreen.id: (context) => const FirstScreen(),
        ContactScreen.id: (context) => const ContactScreen(),
        ProfileScreen.id: (context) => const ProfileScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
      },
    );
  }
}
