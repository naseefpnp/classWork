import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackEx extends StatelessWidget {
  const StackEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
        ),
        body: Center(
          child: Stack(
            children: [
              Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                            "assets/images/x-wen-qjCHPZbeXCQ-unsplash.jpg"))),
              ),
              Positioned(
                top: 80,
                left: 40,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/credit-card.png"))),
                ),
              ),
              Positioned(
                top: 80,
                left: 90,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/pngwing.com.png"))
                  ),
                ),
              ),
              Positioned(
                right: 10,
                bottom: 0,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: Text(
                      "visa".toUpperCase(),
                      style: GoogleFonts.satisfy(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  height: 60,
                  width: 60,
                ),

              ),
              Positioned(
                bottom: 0,
                left: 20,
                child: Container(
                  height: 40,
                  width: 100,
                  child: Text("naseef p".toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                ),
              ),
              Positioned(
                top: 10,
                right: 20,
                child: Container(
                  height: 70,
                  width: 80,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                          image: AssetImage("assets/images/visa-logo-png-transparent.png"))
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

void main() {
  runApp(const MaterialApp(
    home: StackEx(),
    debugShowCheckedModeBanner: false,
  ));
}
