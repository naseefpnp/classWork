import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [Colors.purple, Colors.blue],
          //   begin: Alignment.bottomLeft,
          //   end: Alignment.topRight,
          //
          // )
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/images/image2.jpg")),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/raindeer.png", height: 200, width: 200),
              // Icon(Icons.sailing_outlined),
              Text("get lost",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.black12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Splash2(),
  ));
}
