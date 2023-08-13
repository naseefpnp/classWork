import 'package:flutter/material.dart';
import 'package:project_application_1/homepage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatefulWidget {

  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var formkey = GlobalKey<FormState>();
  bool passvisible = true;
  bool passvisible2 = true;
  String? password1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("REGISTER"),
      // ),
      body: Form(
        key:formkey ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Name",
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person)
                ),
                validator: (name) {
                  if(name!.isEmpty  ){

                    return "enter your name";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Phone",
                    labelText: "Phone",
                    prefixIcon: Icon(Icons.phone)
                ),
                validator: (phone) {
                  if(phone!.isEmpty || phone.length != 10 ){
                   return "enter your number or more or less 10 numbers";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Username",
                    labelText: "Username",
                    prefixIcon: Icon(Icons.people)
                ),
                validator: (username) {
                  if(username!.isEmpty || username!.contains("@") ){

                    return "empty or username doesnt contain @";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: passvisible2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  if(passvisible2 == true){
                    passvisible2= false;
                  }else{
                    passvisible2 = true;
                  }
                });
              }, icon:Icon(passvisible2 == true? Icons.visibility_off:Icons.visibility)),
                    hintText: "Password",
                    labelText: "Password",
                    prefixIcon: Icon(Icons.password)
                ),
                validator: (password) {

                  if(password!.isEmpty || password.length<6  ){
                  password1 = password;
                    return "password must be 6 or more letters";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: passvisible,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Confirm Password",
                    labelText: "Password",
                    prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    if(passvisible == true){
                      passvisible= false;
                    }else{
                    passvisible = true;
                    }
                  });
                  }, icon: Icon(passvisible == true?  Icons.visibility_off : Icons.visibility)),
                ),
                validator: (repassword) {
                  if(repassword!.isEmpty || repassword != password1  ){

                    return "Confirm your password";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(onPressed: () {
            final valid = formkey.currentState!.validate();
            if(valid) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Homepage()));
            }else {
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
            }, child: Text("Register"))
          ],
        ),
      )
    );
  }
}
