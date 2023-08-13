import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
 var index = 0;
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("hi"),),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex:index,
          selectedItemColor: Colors.yellow,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",backgroundColor: Colors.red),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded),label: "Create",backgroundColor: Colors.blue),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile",backgroundColor: Colors.purple),

      ]),
    );
  }
}
void main(){
  runApp(MaterialApp(home: BottomNav(),));

}