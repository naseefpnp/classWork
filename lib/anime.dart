import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class LotteAnime extends StatelessWidget {
  const LotteAnime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottieee"),),
      body: Center(
        child: ListView(
          children: [
            Lottie.asset("assets/animm/animation_ll3ima1n.json")
          ],
        ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: LotteAnime(),
  debugShowCheckedModeBanner: false,));
}