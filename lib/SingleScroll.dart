import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SingleScroll extends StatelessWidget {
  const SingleScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lets Read A Story"),centerTitle: true,),
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("".toUpperCase(),style: GoogleFonts.satisfy(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.red),)),
              ),
            Text("""
                    """)

          ],
        ),

    );
  }
}
void main(){
  runApp(MaterialApp(home:SingleScroll(),));
}