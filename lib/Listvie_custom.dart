import 'package:flutter/material.dart';

class Listview_custom extends StatelessWidget {
  const Listview_custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate(List.generate(
              5,
              (index) => Card(
                    child: Text("helloo"),
                  )))),
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: Listview_custom(),
    debugShowCheckedModeBanner: false,
  ));
}
