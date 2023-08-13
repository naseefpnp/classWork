import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Drawer_ex extends StatelessWidget {
  const Drawer_ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
          style: GoogleFonts.satisfy(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orangeAccent, Colors.pinkAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50.0, bottom: 20),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                             "assets/images/pxfuel.jpg"),
                        ),
                        title: Text(
                          "Sundar Pichai".toUpperCase(),
                          style: GoogleFonts.habibi(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        subtitle: Text(
                          "Ceo of Google".toUpperCase(),
                          style: GoogleFonts.nobile(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.dashboard),
                          title: Text("Dashboard"),
                        ),
                        ListTile(
                          leading: Icon(Icons.leak_add_sharp),
                          title: Text("Leads"),
                        ),
                        ListTile(
                          leading: Icon(Icons.people_outline_outlined),
                          title: Text("Clients"),
                        ),
                        ListTile(
                          leading: Icon(Icons.rocket_launch_rounded),
                          title: Text("Projects"),
                        ),
                        ListTile(
                          leading: Icon(Icons.emoji_people),
                          title: Text("Patients"),
                        ),
                        ListTile(
                          leading: Icon(Icons.subject_sharp),
                          title: Text("Subscription"),
                        ),
                        ListTile(
                          leading: Icon(Icons.payments),
                          title: Text("Payments"),
                        ),
                        ListTile(
                          leading: Icon(Icons.supervised_user_circle_sharp),
                          title: Text("Users"),
                        ),
                        ListTile(
                          leading: Icon(Icons.library_add),
                          title: Text("Library"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: SizedBox(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){}, child: Text("Login"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.pink, // Background color
                                onPrimary: Colors.white, // Text color
                                padding:
                                EdgeInsets.symmetric(horizontal: 130, vertical: 8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Container(
                height: 400,
                width: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image:AssetImage("assets/images/pxfuel.jpg")
                  )
                ),
              ),
              Text("Sundar Pichai",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.black),),

                 SizedBox(
                  height: 1000,
                  width: 600,
                  child: Text("""Pichai Sundararajan (born June 10, 1972[3][4][5]), better known as Sundar Pichai
                   (/ˈsʊndɑːr pɪˈtʃaɪ/), is an American business executive.[6] He is the chief executive
                    officer (CEO) of Alphabet Inc. and its subsidiary Google.[7]
Pichai began his career as a materials engineer. Following a short stint at the management consulting
 firm McKinsey & Co., Pichai joined Google in 2004,[8] where he led the product management and
  innovation efforts for a suite of Google's client software products, including Google Chrome and
   ChromeOS, as well as being largely responsible for Google Drive. In addition, he went on to oversee
    the development of other applications such as Gmail and Google Maps. In 2010, Pichai also announced
     the open-sourcing of the new video codec VP8 by Google and introduced the new video format, WebM.
      The Chromebook was released in 2012. In 2013, Pichai added Android to the list of Google products
       that he oversaw.Pichai was selected to become the next CEO of Google on August 10, 2015, after
          previously being appointed Product Chief by CEO Larry Page. On October 24, 2015, he stepped into
           the new position at the completion of the formation of Alphabet Inc., the new holding company 
           for the Google company family. He was appointed to the Alphabet Board of Directors in 2017.[9]
Pichai was included in Time's annual list of the 100 most influential people in 2016[10] and 2020.[11]
""",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black),),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Drawer_ex(),
    debugShowCheckedModeBanner: false,
  ));
}
