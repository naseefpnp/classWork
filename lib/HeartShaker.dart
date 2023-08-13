import 'package:flutter/material.dart';

class Heart_shaker extends StatelessWidget {
  var color = [
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.purple,
    Colors.teal,
    Colors.yellow
  ];
  var icon =[
    "assets/icons/symbels/bell.png",
    "assets/icons/symbels/bookmark.png",
    "assets/icons/symbels/chat.png",
    "assets/icons/symbels/dslr-camera.png",
    "assets/icons/symbels/home.png",
    "assets/icons/symbels/mute-microphone.png",
    "assets/icons/symbels/phone-call.png",
    "assets/icons/symbels/processor.png"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 50),

          itemCount: 8,
          itemBuilder: (context,index){
        return Container(
          height: 50,
          width: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: color[index],
          ),
          child: Center(
            child: Column(

              children: [

                Text("Heart shaker"),
                SizedBox(width: 10,),
                Image.asset(icon[index],height: 40,width: 40,),
              ]

            ),
          ),
        );
      }),
    );
  }
}
void main(){
  runApp(MaterialApp(home: Heart_shaker(),));
}