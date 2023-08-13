import 'package:flutter/material.dart';

class Gridview_extend extends StatelessWidget {
  const Gridview_extend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview_extend"),),
      body: GridView.extent(maxCrossAxisExtent: 60,
      children: List.generate(10, (index) => Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.ac_unit_rounded),
              Text("helloo"),
            ],
          ),
        ),
      )),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: Gridview_extend(),));
}