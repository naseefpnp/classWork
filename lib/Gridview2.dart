import 'package:flutter/material.dart';

class GridView2 extends StatelessWidget {
  const GridView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview2"),),
    body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    itemCount: 16,
    itemBuilder: (context,index){
     return Card(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.ac_unit_rounded),
              Text("hey")
            ],
          ),
        ),
      );
    },
    )
    );
  }
}
void main(){
  runApp(MaterialApp(home: GridView2(),));
}