import 'package:flutter/material.dart';
import 'package:project_application_1/homepage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Register.dart';

class login2 extends StatefulWidget {
  const login2({super.key});

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "username"
                  
                ),
                validator: (username){
                  if(username!.isEmpty || !username.contains('@')){
                    return "empty or invalid";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "password",
              ),
                validator: (password){
                  if(password!.isEmpty || password.length<6){
                    return "empty or less than 6 letters";
                  }else{
                    return null;
                  }
                },
              ),
            ),
              ElevatedButton(onPressed: () {
              final valid = formkey.currentState!.validate();
              if(valid){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage()));
              }else{
                Fluttertoast.showToast(
                msg: "invalid username or password",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
                );
                }
              }, child: Text("Login")),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register()));
              }, child: Text("not a user....? sign up here"))
            ],
        ),
      ),
    );
  }
}

void main(){
  runApp(MaterialApp(home: login2(),));
}