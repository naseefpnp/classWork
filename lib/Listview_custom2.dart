import 'package:flutter/material.dart';

class Listview_custom2 extends StatelessWidget {
  const Listview_custom2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome"),),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) =>
       Text("helloo"),
       childCount: 10,
      )),
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: Listview_custom2(),
    debugShowCheckedModeBanner: false,
  ));
}
