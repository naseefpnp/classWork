import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var name= ["burger","sandwich","coco","mango","crab"];
  var price = ["23","45","345","23","98"];
  var image = ["assets/icons/food icons/1.png","assets/icons/food icons/2.png","assets/icons/food icons/3.png","assets/icons/food icons/4.png","assets/icons/food icons/5.png"];
ListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview 2"),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 20,),
          Icon(Icons.search),
          SizedBox(width: 10,),
          PopupMenuButton(itemBuilder: (context){
            return[
            PopupMenuItem(child: Text("settings"),),
              PopupMenuItem(child: Text("profile"),),
              PopupMenuItem(child: Text("broadcast"),),
              PopupMenuItem(child: Text("scan"),),

            ];
          })
        ],
      ),
      body: ListView(
        children: List.generate(5, (index) => Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text("${price[index]}"),
            leading: CircleAvatar(
              backgroundImage: AssetImage(image[index]),
            ),
          ),
        )),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner : false,
      home: ListView2(),));
}