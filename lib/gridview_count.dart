import 'package:flutter/material.dart';

class Gridview_count extends StatelessWidget {
  const Gridview_count({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview_count"),),
      body: GridView.count(crossAxisCount:3,
      children: List.generate(15, (index) => Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("hello"),
              Icon(Icons.ac_unit_rounded)
            ],
          ),
        ),
      )),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: Gridview_count(),));
}