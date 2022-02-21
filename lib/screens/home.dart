import 'package:flutter/material.dart';

import 'contact.dart';
import 'profile.dart';

class HomeScreen extends StatelessWidget {
  static String id = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: const Center(
        child: Text("MyApp"),
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
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg"),
                ),
              ),
            ),
            ListTile(
              title: const Text("Home",style: TextStyle(color: Colors.indigo,fontSize: 15)),
              leading: const Icon(Icons.home,color: Colors.indigo,size: 30,),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
              },
            ),
            ListTile(
              title: const Text("Profile",style: TextStyle(color: Colors.indigo,fontSize: 15)),
              leading: const Icon(Icons.manage_accounts,color: Colors.indigo,size: 30,),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
              },
            ),
            ListTile(
              title: const Text("Contact",style: TextStyle(color: Colors.indigo,fontSize: 15)),
              leading: const Icon(Icons.contact_page,color: Colors.indigo,size: 30,),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CntactScreen()));
              },
            ),
            ListTile(
              title: const Text("First",style: TextStyle(color: Colors.indigo,fontSize: 15)),
              leading: const Icon(Icons.call,color: Colors.indigo,size: 30,),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CntactScreen()));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.indigo),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts),label: "Profile",backgroundColor: Colors.teal),
          BottomNavigationBarItem(icon: Icon(Icons.contact_page),label: "Contact",backgroundColor: Colors.purple),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: "First",backgroundColor: Colors.red),
        ],
        onTap: (index){

        },
      ),
    );
  }
}
