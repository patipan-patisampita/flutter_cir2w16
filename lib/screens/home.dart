import 'package:flutter/material.dart';

import 'contact.dart';
import 'profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
        centerTitle: true,
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
              leading: const Icon(Icons.account_balance,color: Colors.indigo,size: 30,),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
              },
            ),
            ListTile(
              title: const Text("Contact",style: TextStyle(color: Colors.indigo,fontSize: 15)),
              leading: const Icon(Icons.call,color: Colors.indigo,size: 30,),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CntactScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
