import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';

class splash3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _splash3state();
}

class _splash3state extends State {
  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Loginpage()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/icons/raindeer.png"),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: splash3(),
  ));
}
