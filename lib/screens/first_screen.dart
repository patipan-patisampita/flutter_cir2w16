import 'package:flutter/material.dart';

import 'contact.dart';
import 'future_screen.dart';
import 'home.dart';
import 'profile.dart';

class FirstScreen extends StatefulWidget {
  static String id = '/first';
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("หน้าแรก"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Card(
            margin: EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home, size: 50, color: Colors.blueAccent),
                    Text("Home", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactScreen()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.new_releases, size: 50, color: Colors.redAccent),
                    Text("Contact", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.military_tech, size: 50, color: Colors.green),
                    Text("Profile", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(12),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.android, size: 50, color: Colors.blueGrey),
                    Text("Texhnology", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              child: UserAccountsDrawerHeader(
                accountName: Text("Mark Zakerberg"),
                accountEmail: Text("mark@gmail.com"),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                currentAccountPicture: CircleAvatar(
                  // backgroundColor: Colors.amber,
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg"),
                ),
              ),
            ),
            ListTile(
              title: const Text("Home",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.home,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            ListTile(
              title: const Text("Profile",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.manage_accounts,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
            ),
            ListTile(
              title: const Text("Contact",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.contact_page,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactScreen()));
              },
            ),
            ListTile(
              title: const Text("First",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.call,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
