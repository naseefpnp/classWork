import 'package:flutter/material.dart';

class Listview_with_Builder extends StatelessWidget {
  const Listview_with_Builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: Center(
            child: Image.asset(("assets/images/image2.jpg")),
          ),
        );
      }),
    );
  }
}

void main(){
  runApp(MaterialApp(home: Listview_with_Builder(),debugShowCheckedModeBanner: false,));
}