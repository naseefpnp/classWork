import 'package:flutter/material.dart';


class MySplashpage extends StatelessWidget{ // this page doesnt undergo any state changes
 @override
  Widget build(BuildContext){
   return Scaffold(
     appBar:AppBar(title:Text("home page"),) ,
   );


 }
}
void main(){
 // attach widget tree to the ui
  runApp(MaterialApp(home: MySplashpage(),));

}