import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProfileUI extends StatefulWidget {
  const ProfileUI({super.key});

  @override
  State<ProfileUI> createState() => _ProfileUIState();
}

class _ProfileUIState extends State<ProfileUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.list,color: Colors.black,))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                            "assets/images/Naseef.jpg"),
                        radius: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:25.0),
                      child: SizedBox(
                        height: 70,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 90,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1611605698335-8b1569810432?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80"),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 150,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1611162616305-c69b3fa7fbe0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80"),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 210,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1614680376408-81e91ffe3db7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80"),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 270,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1611944212129-29977ae1398c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.0),
                      child: Text("Naseef",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black,)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.0),
                      child: Text("@naseefpnp",style: TextStyle(fontSize: 10,fontWeight: FontWeight.normal,color: Colors.black,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text("FLUTTER DEVELOPER",style:GoogleFonts.playfairDisplay(fontWeight:FontWeight.bold,fontSize: 22 ) ,),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey
                        ),
                        child: ListTile(
                          leading: Icon(Icons.privacy_tip),
                          trailing: Icon(Icons.arrow_forward_ios),
                          title: Text("Privacy",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey
                          ),
                          child: ListTile(
                            leading: Icon(Icons.timelapse),
                            trailing: Icon(Icons.arrow_forward_ios),
                            title: Text("Purchase History",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey
                          ),
                          child: ListTile(
                            leading: Icon(Icons.help),
                            trailing: Icon(Icons.arrow_forward_ios),
                            title: Text("Help & Support",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey
                          ),
                          child: ListTile(
                            leading: Icon(Icons.settings),
                            trailing: Icon(Icons.arrow_forward_ios),
                            title: Text("Settings",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey
                          ),
                          child: ListTile(
                            leading: Icon(Icons.add_circle_outline),
                            trailing: Icon(Icons.arrow_forward_ios),
                            title: Text("Invite a Friend",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey
                          ),
                          child: ListTile(
                            leading: Icon(Icons.logout),
                            trailing: Icon(Icons.arrow_forward_ios),
                            title: Text("Logout",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ProfileUI(), debugShowCheckedModeBanner: false));
}
