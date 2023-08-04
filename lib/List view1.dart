import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Listview1 extends StatelessWidget {
  const Listview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: ListView(
        children: [
          Center(
            child: Text("Shop Here",
            style: GoogleFonts.satisfy(fontSize: 40,color: Colors.pink),),
          ),
          Card(
            color: Colors.orange,
            child: ListTile(
              title: Text("shoe"),
              subtitle:Text ("\$ 780"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80"),
              ),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      )
    );
  }
}
void main(){
  runApp(MaterialApp(home: Listview1(),));
}