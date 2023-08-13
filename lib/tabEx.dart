import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_application_1/splash2.dart';

import 'Listview_separated.dart';
import 'Register.dart';
import 'Wchat.dart';
import 'homepage.dart';

class TabEx extends StatelessWidget {
  const TabEx({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: [
            Icon(Icons.search),
            Icon(Icons.camera_alt),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("settings")),
                PopupMenuItem(child: Text("Starred")),
                PopupMenuItem(child: Text("Scan")),
                PopupMenuItem(child: Text("Profile")),
              ];
            })
          ],
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.zero,
              tabs: [
            SizedBox(
                width: MediaQuery.of(context).size.width *.1,
                child: FaIcon(Icons.people_outline_outlined)),
            SizedBox(
                width: MediaQuery.of(context).size.width *.3,
                child: Text("Chat")),
                SizedBox(
                    width: MediaQuery.of(context).size.width *.3,
                    child: Text("Status")),
                SizedBox(
                    width: MediaQuery.of(context).size.width *.3,
                    child: Text("Call")),
          ]),

        ),
        body: TabBarView(
          children: [
            Splash2(),
            Contacts(),
            Listview_separated(),
            Homepage(),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TabEx(),
    debugShowCheckedModeBanner: false,
  ));
}
