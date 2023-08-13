import 'package:flutter/material.dart';

class Gridview1 extends StatelessWidget {
  const Gridview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Gridview"),
      ),
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 60),
          children:List.generate(15, (index) =>Card(
            color: Colors.grey,
            child: Center(

              child: Icon(Icons.ac_unit_rounded),
            ),
          ))
      ),

    );
  }
}
void main(){
  runApp(MaterialApp(home: Gridview1(),
    debugShowCheckedModeBanner: false,));
}
