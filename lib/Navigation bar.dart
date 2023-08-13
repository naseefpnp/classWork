import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Bar"),),
      drawer:Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/x-wen-qjCHPZbeXCQ-unsplash.jpg")
                )
              ),
              accountName: Text("Naseefpnp"), accountEmail: Text("naseefpnp098@Gmail.com"),
              currentAccountPicture:CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80"),

              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
                )
              ]
              ,)
          ],
        ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: NavigationBar(),));
}