import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("เข้าสู่ระบบ"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if(value == ""){
                    return "Field is required";
                  }
                  return null;
                },
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if(value!.length<3 ){
                    return "Passworf should be more than 3 characters";
                  }
                  return null;
                },
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                   if(_formkey.currentState!.validate()==true){
                     print("Form Submitted Successfully");
                   }
                    
                  },
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
