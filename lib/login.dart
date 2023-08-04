import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'homepage.dart';

class Loginpage extends StatelessWidget {
  String username = "naseefpnp";
  String password = "1245";
  TextEditingController usercontrol = TextEditingController();
  TextEditingController passcontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.lightGreen,
        title: Text("login page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: usercontrol,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                  hintText: "User Name",
                  prefixIcon: Icon(Icons.people),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, right: 20, bottom: 20),
              child: TextField(
                controller: passcontrol,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "PassWord",
                  hintText: "password",
                  prefixIcon: Icon(Icons.password),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if(username == usercontrol.text && password == passcontrol.text) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Homepage()));
                    usercontrol.text = "";
                    passcontrol.text ="";
                  }else{
                    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("invalid username or password")));
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
                },
                child: Text("login")),
          ],
        ),
      ),
    );
  }
}
